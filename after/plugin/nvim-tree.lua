local tree = require("nvim-tree.api")
require("nvim-tree").setup({
	view = {
		relativenumber = true,
		float = {
			enable = true,
			open_win_config = {
				width = 120,
			}
		}
	},
	renderer = {
		icons = {
			webdev_colors = true,
			git_placement = "before",
			modified_placement = "after",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
				modified = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "",
				modified = "●",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			}
		}
	}
})

vim.keymap.set("n", "<leader>pv", tree.tree.toggle, { desc = "Project View" } )
