local cmp = require('cmp')

cmp.setup({
  snippet = {expand = function(args) vim.fn["vsnip#anonymous"](args.body) end},
  mapping = {['<Tab>'] = cmp.mapping.confirm({select = true})},
  sources = cmp.config.sources({{name = 'nvim_lsp'}, {name = 'vsnip'}})
})
