local neogit = require('neogit')
neogit.setup({
	disable_line_numbers = false,
	intergrations = {
		telescope = true,
		diffview = true
	},
})

vim.cmd.highlight('NeogitDiffAdd guibg=#3e3e3e')
vim.cmd.highlight('NeogitDiffDelete guibg=#3e3e3e')
vim.cmd.highlight('NeogitDiffAddHighlight guibg=#3f3f3f')
vim.cmd.highlight('NeogitDiffDeleteHighlight guibg=#3f3f3f')
vim.keymap.set("n", "<leader>gg", vim.cmd.Neogit, { desc = "Substitude all occurances of word" } )
