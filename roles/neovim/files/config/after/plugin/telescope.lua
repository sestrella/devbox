local telescope = require("telescope")
telescope.load_extension("fzf")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<c-p>", builtin.git_files, {})
