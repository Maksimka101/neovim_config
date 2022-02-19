local cmd = vim.cmd     				-- Execute Vim commands
local exec = vim.api.nvim_exec 	-- Execute Vimscript
local g = vim.g         				-- Global variables
local opt = vim.opt         		-- Set options (global/buffer/windows-scoped)

opt.mouse = 'a'
opt.syntax = 'on'
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.softtabstop = 2
opt.ignorecase = true
opt.termguicolors = true        -- Enable 24-bit RGB colors
opt.hidden = true               -- Enable background buffers
opt.history = 100               -- Remember N lines in history
opt.lazyredraw = true           -- Faster scrolling

cmd([[
  set number relativenumber
]])

require("trouble").setup {}
require("autosave").setup{}
require("fidget").setup{}
require('nvim-web-devicons').setup{}
require('goto-preview').setup {}
require("nvim-treesitter.configs").setup{
  rainbow = {
    enable = false,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    -- extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    -- max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
require('nvim-autopairs').setup{}
require "lsp_signature".setup{
  hint_enable = false,
}
require('gitsigns').setup{
	current_line_blame = true
}

