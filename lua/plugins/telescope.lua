local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Project Find files" })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "Project Git find files" })
vim.keymap.set('n', '<leader>ps', function()
		builtin.grep_string({ search = vim.fn.input("Grep >") });
	end, { desc = "Project grep Search" })
