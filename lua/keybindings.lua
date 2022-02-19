-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--- @param lhs string
--- @param command string
local function mapNCommand(lhs, command)
  map('n', lhs, '<CMD>' .. command .. '<CR>')
end

--- @param lhs string
--- @param luaCommand string
local function mapNLua(lhs, luaCommand)
  mapNCommand(lhs, 'lua ' .. luaCommand)
end


vim.cmd([[
  set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
  tnoremap <Esc> <C-\><C-n>
]])

-- Code actions
mapNLua('gd', 'vim.lsp.buf.definition()')
mapNLua('gD', 'vim.lsp.buf.declaration()')
mapNCommand('gr', 'Trouble lsp_references')
mapNLua('gi', 'vim.lsp.buf.implementation()')
mapNLua('ga', "require('telescope.builtin').lsp_code_actions()")
mapNCommand('gh', 'Trouble lsp_definitions')
mapNLua('gR', 'vim.lsp.buf.rename()')
mapNCommand('gf', "Trouble quickfix")
mapNLua('gs', 'vim.lsp.buf.signature_help()')

-- Find (files, commands)
mapNLua('<space>p', "require('telescope.builtin').find_files()")
mapNLua('<space>r', "require('telescope.builtin').oldfiles()")
mapNLua('<space>o', "require('telescope.builtin').commands()")

-- Tabs
mapNCommand('<space>[', 'BufferPrevious')
mapNCommand('<space>]', 'BufferNext')
mapNCommand('<space>w', 'BufferClose')
mapNCommand('<space>1', 'BufferGoto 1')
mapNCommand('<space>2', 'BufferGoto 2')
mapNCommand('<space>3', 'BufferGoto 3')
mapNCommand('<space>4', 'BufferGoto 4')
mapNCommand('<space>5', 'BufferGoto 5')
mapNCommand('<space>6', 'BufferGoto 6')
mapNCommand('<space>7', 'BufferGoto 7')
mapNCommand('<space>8', 'BufferGoto 8')
-- map('n', '<space>9', 'BufferGoto 9') -- Used to open terminal
mapNCommand('<space>0', 'BufferLast')

-- Extra Windows
OpenTerminalMapping = '<space>9'
mapNCommand('<space>m', "Trouble workspace_diagnostics")
mapNLua('<space>u', "require('telescope.builtin').treesitter()")
mapNCommand('<space>e', "NvimTreeToggle")

-- Manipulate with windows
map('n', '<space>h', '<C-W>h')                                                       -- Select window left
map('n', '<space>l', '<C-W>l')                                                       -- Select window right
map('n', '<space>k', '<C-W>k')                                                       -- Select window up
map('n', '<space>j', '<C-W>j')                                                       -- Select window down
map('n', '<space>v', '<C-W>v')                                                       -- Select window down
mapNCommand('qq', 'q!')
mapNCommand('qa', 'qa')

-- Complition mapping
-- It stays at `complition_config` because when i creating mapping here complete on enter doesn't works

-- Other
mapNLua('<space>s', 'vim.lsp.buf.formatting()')

