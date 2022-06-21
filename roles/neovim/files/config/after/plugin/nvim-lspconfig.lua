local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local keymap_set_n = function(lhs, rhs)
  vim.keymap.set("n", lhs, rhs, {})
end

keymap_set_n("<space>j", vim.diagnostic.goto_next)
keymap_set_n("<space>k", vim.diagnostic.goto_prev)
keymap_set_n("<space><space>", vim.diagnostic.setloclist)

local lspconfig = require('lspconfig')
local on_attach = function(client, bufnr)
  local buf_set_keymap = function(lhs, rhs)
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', lhs, rhs, opts)
  end
  buf_set_keymap('<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  buf_set_keymap('<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
  buf_set_keymap('<space>r', '<cmd>lua vim.lsp.buf.rename()<CR>')
  buf_set_keymap('<space>td', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
end

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local servers = {
  rust_analyzer = {},
  sumneko_lua = {
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
  terraformls = {},
  yamlls = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/circleciconfig.json"] = "/.circleci/config.yml",
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*.yml"
      }
    }
  }
}

for server, settings in pairs(servers) do
  lspconfig[server].setup({
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150
    },
    on_attach = on_attach,
    settings = settings
  })
end
