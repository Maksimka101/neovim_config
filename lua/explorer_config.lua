require('nvim-tree').setup {
  enable = true,
--	auto_close = true,
  open_on_setup = true,
  open_on_tab = true,
  update_cwd = true,
	hijack_cursor = true,
	highlight_opened_files = 3,
	view = {
    number = true,
		width = 40,
		auto_resize = true,
	},
	mappings = {
		list = {
			{ key = {"l"}, action = "edit", mode = "n" },
		}
	}
}

