-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--- @param lhs string
--- @param command string
local function mapNCommand(lhs, command)
  map("n", lhs, "<CMD>" .. command .. "<CR>")
end

---@param lhs string
---@param command string
local function mapICommand(lhs, command)
  map("i", lhs, "<CMD>" .. command .. "<CR>")
end
--- @param lhs string
--- @param luaCommand string
local function mapNLua(lhs, luaCommand)
  mapNCommand(lhs, "lua " .. luaCommand)
end

vim.cmd(
  [[
  set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
]]
)

-- Code actions
mapNLua("gd", "vim.lsp.buf.definition()")
mapNLua("gD", "vim.lsp.buf.declaration()")
mapNCommand("gr", "Trouble lsp_references")
mapNLua("gi", "vim.lsp.buf.implementation()")
mapNLua("ga", "require('telescope.builtin').lsp_code_actions()")
mapNCommand("gh", "Trouble lsp_definitions")
mapNLua("gR", "vim.lsp.buf.rename()")
mapNCommand("gf", "Trouble quickfix")
mapNLua("gs", "vim.lsp.buf.signature_help()")

-- Find (files, commands)
mapNLua("<D-p>", "require('telescope.builtin').find_files()")
mapNLua("<D-r>", "require('telescope.builtin').oldfiles()")
mapNLua("<D-o>", "require('telescope.builtin').commands()")

-- Tabs
mapNCommand("<D-{>", "BufferPrevious")
mapNCommand("<D-}>", "BufferNext")
mapNCommand("<D-w>", "BufferClose")
mapNCommand("<D-1>", "BufferGoto 1")
mapNCommand("<D-2>", "BufferGoto 2")
mapNCommand("<D-3>", "BufferGoto 3")
mapNCommand("<D-4>", "BufferGoto 4")
mapNCommand("<D-5>", "BufferGoto 5")
mapNCommand("<D-6>", "BufferGoto 6")
mapNCommand("<D-7>", "BufferGoto 7")
mapNCommand("<D-8>", "BufferGoto 8")
-- map('n', '<D-9>', 'BufferGoto 9') -- Used to open terminal
mapNCommand("<D-0>", "BufferLast")

-- Extra Windows
OpenTerminalMapping = "<D-(>"
mapNCommand("<D-m>", "Trouble workspace_diagnostics")
mapNLua("<D-u>", "require('telescope.builtin').treesitter()")
mapNCommand("<D-e>", "NvimTreeToggle")

-- Manipulate with windows
map("n", "<space>h", "<C-W>h") -- Select window left
map("n", "<space>l", "<C-W>l") -- Select window right
map("n", "<space>k", "<C-W>k") -- Select window up
map("n", "<space>j", "<C-W>j") -- Select window down
map("n", "<space>v", "<C-W>v") -- Seplit window horizontaly
mapNCommand("qq", "q!")
mapNCommand("qa", "qa")

-- Complition mapping
-- It stays at `complition_config` because when i creating mapping here complete on enter doesn't works

-- Other
mapNCommand("<D-s>", "Format")
mapICommand("<D-s>", "Format")
