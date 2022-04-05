vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'hashivim/vim-terraform'
  use 'khaveesh/vim-fish-syntax'
  use 'neovimhaskell/haskell-vim'
  use 'tpope/vim-surround'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
      require('lualine').setup()
    end
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      'hrsh7th/cmp-nvim-lsp'
    },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

      local lspconfig = require('lspconfig')
      local on_attach = function(client, bufnr)
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>td', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
      end

      local servers = {
        rust_analyzer = {},
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
    end
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip'
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end
        },
        mapping = {
          ['<Tab>'] = cmp.mapping.confirm({ select = true })
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'vsnip' }
        })
      })
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup({
        view = {
          side = 'right'
        }
      })
      vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<cr>', {})
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup()
      vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>', {})
    end
  }

  use  {
    'ishan9299/nvim-solarized-lua',
    config = function()
      vim.g.solarized_termtrans = 1
      vim.cmd('colorscheme solarized')
    end
  }
end)
