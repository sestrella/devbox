vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'khaveesh/vim-fish-syntax'
  use 'neovimhaskell/haskell-vim'
  use 'tpope/vim-surround'

  use  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local on_attach = function(_client, bufnr)
        local opts = { noremap=true, silent=true }

        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
      end

      lspconfig.rust_analyzer.setup({
        on_attach,
        flags = {
          debounce_text_changes = 150
        }
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
