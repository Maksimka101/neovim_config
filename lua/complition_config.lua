local cmp = require('cmp')
local cmpNvimLsp = require('cmp_nvim_lsp')

cmp.setup{
	sources = {
		{ name = 'nvim_lsp' },
    { name = 'buffer' },
		{ name = 'nvim_lua' },
		{ name = 'luasnip' },
		{ name = 'cmdline' }
	},

	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},

	completion = {
		keyword_length = 3,
	},

	-- Key mapping
  mapping = {
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-u>'] = cmp.mapping.scroll_docs(4),
    ['<C-l>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
}

Capabilities = cmpNvimLsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

