local group = vim.api.nvim_create_augroup("packer_user_config", {})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = "plugins.lua",
  callback = function()
    print("Calling PackerCompile")
    vim.cmd([[source <afile> | PackerCompile]])
  end,
  group = group
})

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use "andrejlevkovitch/vim-lua-format"
  use "cormacrelf/dark-notify"
  use "evanleck/vim-svelte"
  use "hashivim/vim-terraform"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"
  use "khaveesh/vim-fish-syntax"
  use "neovim/nvim-lspconfig"
  use "neovimhaskell/haskell-vim"
  use "pearofducks/ansible-vim"
  use "rust-lang/rust.vim"
  use "tpope/vim-surround"

  use {"nvim-lualine/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons"}}
  use {"hrsh7th/nvim-cmp", requires = {"hrsh7th/cmp-nvim-lsp"}}
  use {"kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons"}}
  use {"nvim-telescope/telescope.nvim", requires = {"nvim-lua/plenary.nvim"}}
  use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}

  use {
    "ishan9299/nvim-solarized-lua",
    config = function()
      vim.g.solarized_termtrans = 1
      vim.cmd("colorscheme solarized")
    end
  }
end)
