local cmp = require("cmp")
local cmpNvimLsp = require("cmp_nvim_lsp")

cmp.setup {
  sources = {
    {name = "nvim_lsp"},
    {name = "buffer"},
    {name = "nvim_lua"},
    {name = "luasnip"},
    {name = "cmdline"}
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },
  completion = {
    keyword_length = 3
  },
  -- Key mapping
  mapping = {
    ["<D-j>"] = cmp.mapping.select_next_item(),
    ["<D-k>"] = cmp.mapping.select_prev_item(),
    ["<D-d>"] = cmp.mapping.scroll_docs(-4),
    ["<D-u>"] = cmp.mapping.scroll_docs(4),
    ["<D-i>"] = cmp.mapping.complete(),
    ["<D-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }
  }
}

Capabilities = cmpNvimLsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
