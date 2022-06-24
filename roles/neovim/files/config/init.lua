-- ----
-- Current settings are inspired by the following repositories:
--
-- - https://github.com/ThePrimeagen/.dotfiles/tree/master/nvim/.config/nvim
-- - https://github.com/nvim-lua/kickstart.nvim
-- - https://github.com/tjdevries/config_manager/tree/master/xdg_config/nvim
-- ----

-- providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0

require("plugins")

-- screen
vim.o.colorcolumn = "80"
vim.o.cursorline = true
vim.o.laststatus = 3
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
-- spaces
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
-- windows
vim.o.splitbelow = true
vim.o.splitright = true
-- search
vim.o.ignorecase = true
vim.o.smartcase = true
-- splits
vim.keymap.set("n", "<c-h>", "<c-w><c-h>", {})
vim.keymap.set("n", "<c-j>", "<c-w><c-j>", {})
vim.keymap.set("n", "<c-k>", "<c-w><c-k>", {})
vim.keymap.set("n", "<c-l>", "<c-w><c-l>", {})
