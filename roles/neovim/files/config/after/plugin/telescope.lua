local keymap_set_n = function(lhs, rhs)
  vim.keymap.set("n", lhs, rhs, {})
end
local telescope = require('telescope.builtin')

-- deprecated
keymap_set_n("<c-p>", telescope.find_files)
keymap_set_n("ff", telescope.find_files)
keymap_set_n("fg", telescope.live_grep)
