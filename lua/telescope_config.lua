require("telescope").setup {}

-- Map Telescope commands to the vim commands to be able to serch for them using Telescope

--- @param commandName string
--- @param command string
local function createCommand(commandName, command)
  vim.cmd("command " .. commandName .. " " .. command)
end

--- @param commandsMap table
local function createCommands(commandsMap)
  for _, command in ipairs(commandsMap) do
    createCommand(command[1], command[2])
  end
end

createCommands {
  {"GitBranches", 'lua require("telescope.builtin").git_branches()'},
  {"GitStashes", 'lua require("telescope.builtin").git_stash()'},
  {"GitStatus", 'lua require("telescope.builtin").git_status()'}
}
