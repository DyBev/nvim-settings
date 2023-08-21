local neogit = require('neogit')

neogit.setup {
	intergrations = {
		diffview = true
	}
}

vim.keymap.set('n', '<leader>gg', vim.cmd.Neogit)
