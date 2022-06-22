local group = vim.api.nvim_create_augroup('lua_format', {})

vim.api.nvim_create_autocmd({"BufWrite"}, {
  pattern = "*.lua",
  callback = function() vim.cmd([[call LuaFormat()]]) end,
  group = group
})
