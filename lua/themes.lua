local cmd = vim.cmd
local autoDarkMode = require('auto-dark-mode')

vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = {
  comment = 'teal',
--  string = 'white',
}
cmd[[
  colorscheme tokyonight
]]

autoDarkMode.setup{
	set_dark_mode = function ()
		vim.g.tokyonight_style = "storm"
    cmd[[colorscheme tokyonight]]
	end,
	set_light_mode = function ()
		vim.g.tokyonight_style = "light"
    cmd[[colorscheme tokyonight]]
	end
}
autoDarkMode.init()


require('nvim-treesitter.configs').setup{
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

