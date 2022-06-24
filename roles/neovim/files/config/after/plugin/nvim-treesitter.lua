require("nvim-treesitter.configs").setup({
  ensure_installed = {"lua"},
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner"
      }
    }
  }
})
