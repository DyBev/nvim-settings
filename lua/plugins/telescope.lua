return {
	"nvim-telescope/telescope.nvim",

	config = function ()
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>tf', builtin.find_files, { desc = "telescope find files" })
		vim.keymap.set('n', '<leader>tg', builtin.git_files, { desc = "telescope find git files" })
		vim.keymap.set('n', '<leader>tw', function()
			builtin.grep_string({ search = vim.fn.input("Grep >") });
		end, { desc = "telescope live grep Search" })
		vim.keymap.set('n', '<leader>ts', function()
			builtin.live_grep();
		end, { desc = "telescope grep Search" })
		vim.keymap.set('n', '<leader>tb', function ()
			builtin.buffers()
		end, { desc = "telescope buffers" })
		vim.keymap.set('n', '<leader>tm', function ()
			builtin.marks()
		end, { desc = "telescope marks" })
		vim.keymap.set('n', '<leader>tc', builtin.commands, { desc = "telescope commands" })
		vim.keymap.set('n', '<leader>th', builtin.command_history, { desc = "telescope commands" })
	end
}

