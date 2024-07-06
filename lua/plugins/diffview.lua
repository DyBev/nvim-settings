return {
	"sindrets/diffview.nvim",

	opts = {
		use_icons = false,
		view = {
			merge_tool = {
				layout = "diff3_mixed"
			}
		},
	},

	config = function()
		vim.keymap.set('n', '<leader>dv', vim.cmd.DiffviewOpen)
		vim.keymap.set('n', '<leader>dh', vim.cmd.DiffviewFileHistory)
		vim.keymap.set('v', '<leader>dh', ":DiffviewFileHistory<CR>")
		vim.keymap.set('n', '<leader>q', vim.cmd.tabclose)
		vim.keymap.set('n', '<leader>df', vim.cmd.DiffviewToggleFiles)
	end,

}
