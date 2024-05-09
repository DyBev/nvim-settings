return {
	"NeogitOrg/neogit",
	event = "VeryLazy",

	config = function()
		local neogit = require('neogit')
		neogit.setup({
			disable_line_numbers = false,
			intergrations = {
				telescope = true,
				diffview = true
			},
		})

		vim.cmd('hi NeogitDiffAddHighlight guibg=#4C566A guifg=#A3BE8C')
		vim.cmd('hi NeogitDiffDeleteHighlight guibg=#4C566A guifg=#BF616A')
		vim.cmd('hi NeogitDiffAdd guibg=#2E3440 guifg=#A3BE8C')
		vim.cmd('hi NeogitDiffDelete guibg=#2E3440 guifg=#BF616A')
		vim.cmd('hi NeogitCursorLine ctermbg=none ctermfg=none guifg=none guibg=#434C5E')
		vim.cmd('hi NeogitDiffContext ctermbg=none ctermfg=none guifg=none guibg=#2E3440')
		vim.cmd('hi NeogitDiffContextHighlight ctermbg=none ctermfg=none guifg=none guibg=#4C566A')
		vim.keymap.set("n", "<leader>gg", vim.cmd.Neogit, { desc = "Substitude all occurances of word" } )
	end
}
