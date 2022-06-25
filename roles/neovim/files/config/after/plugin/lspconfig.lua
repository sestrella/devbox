local set_keymaps = function(keymaps, opts)
  for lhs, rhs in pairs(keymaps) do
    vim.keymap.set("n", lhs, rhs, opts)
  end
end

set_keymaps({
  -- ["<space>k"] = vim.diagnostic.goto_prev,
  ["<space>j"] = vim.diagnostic.goto_next,
  ["<space><space>"] = vim.diagnostic.setloclist,
}, { noremap = true, silent = true })

vim.keymap.set(
  "n",
  "<space>k",
  vim.diagnostic.goto_prev,
  { noremap = true, silent = true, desc = "Go to prev error" }
)

local lspconfig = require("lspconfig")
local on_attach = function(_client, bufnr)
  set_keymaps({
    ["<space>ca"] = vim.lsp.buf.code_action,
    ["<space>dc"] = vim.lsp.declaration,
    ["<space>df"] = vim.lsp.buf.definition,
    ["<space>f"] = vim.lsp.buf.formatting,
    ["<space>r"] = vim.lsp.buf.rename,
    ["<space>sh"] = vim.lsp.buf.signature_help,
    ["<space>td"] = vim.lsp.buf.type_definition,
  }, { noremap = true, silent = true, buffer = bufnr })
  require("lsp_signature").on_attach()
end

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local servers = {
  ansiblels = {
    cmd = {
      "env",
      "ASDF_NODEJS_VERSION=18.4.0",
      "ansible-language-server",
      "--stdio",
    },
  },
  bashls = {
    cmd = {
      "env",
      "ASDF_NODEJS_VERSION=18.4.0",
      "bash-language-server",
      "start",
    },
  },
  dockerls = {
    cmd = {
      "env",
      "ASDF_NODEJS_VERSION=18.4.0",
      "docker-langserver",
      "--stdio",
    },
  },
  rust_analyzer = {},
  sumneko_lua = {
    settings = {
      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
      Lua = {
        runtime = { version = "LuaJIT", path = runtime_path },
        diagnostics = { globals = { "vim" } },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        telemetry = { enable = false },
      },
    },
  },
  terraformls = {},
  yamlls = {
    cmd = {
      "env",
      "ASDF_NODEJS_VERSION=18.4.0",
      "yaml-language-server",
      "--stdio",
    },
    settings = {
      yaml = {
        schemas = {
          ["https://json.schemastore.org/circleciconfig.json"] = "/.circleci/config.yml",
          ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*.yml",
          ["https://raw.githubusercontent.com/ansible-community/schemas/main/f/ansible-lint.json"] = "/.ansible-lint",
          ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "/docker-compose*.yml",
        },
      },
    },
  },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local default_options = {
  capabilities = capabilities,
  flags = { debounce_text_changes = 150 },
  on_attach = on_attach,
}

for server, options in pairs(servers) do
  lspconfig[server].setup(vim.tbl_extend("force", default_options, options))
end
