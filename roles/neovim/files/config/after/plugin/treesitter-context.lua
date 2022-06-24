require("treesitter-context").setup({
  enable = true,
  patterns = {
    default = {
      "class",
      "function",
      "method",
      "for",
      "while",
      "if",
      "switch",
      "case",
    },
  },
})
