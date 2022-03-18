local cmd = vim.cmd -- Execute Vim commands
local exec = vim.api.nvim_exec -- Execute Vimscript
local g = vim.g -- Global variables
local opt = vim.opt -- Set options (global/buffer/windows-scoped)

opt.mouse = "a"
opt.syntax = "on"
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.softtabstop = 2
opt.ignorecase = true
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history
opt.lazyredraw = true -- Faster scrolling

cmd([[
  set number relativenumber
"  set spelllang=en,ru
"  set spellsuggest=best,9
"  set spell
]])

require("trouble").setup {}
require("autosave").setup {}
require("fidget").setup {}
require("nvim-web-devicons").setup {}
require("goto-preview").setup {}
require("nvim-treesitter.configs").setup {
  rainbow = {
    enable = false
  }
}
require("nvim-autopairs").setup {}
require "lsp_signature".setup {
  hint_enable = false
}
require("gitsigns").setup {
  current_line_blame = true
}
