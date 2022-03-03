vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'khaveesh/vim-fish-syntax'
  use 'neovim/nvim-lspconfig'
  use 'neovimhaskell/haskell-vim'
  use 'tpope/vim-surround'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup()
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
