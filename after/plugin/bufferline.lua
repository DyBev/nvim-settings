local buffLine = require("bufferline")

buffLine.setup{
	options = {
		numbers = "ordinal",
	}
}

vim.keymap.set("n", "<leader>ca", function() buffLine.go_to(1, true) end, { desc = "go to buffer 1" } )
vim.keymap.set("n", "<leader>cs", function() buffLine.go_to(2, true) end, { desc = "go to buffer 2" } )
vim.keymap.set("n", "<leader>ch", function() buffLine.go_to(3, true) end, { desc = "go to buffer 3" } )
vim.keymap.set("n", "<leader>cj", function() buffLine.go_to(4, true) end, { desc = "go to buffer 4" } )
vim.keymap.set("n", "<leader>ck", function() buffLine.go_to(5, true) end, { desc = "go to buffer 5" } )
vim.keymap.set("n", "<leader>cl", function() buffLine.go_to(6, true) end, { desc = "go to buffer 6" } )
vim.keymap.set("n", "<leader>c;", function() buffLine.go_to(-1, true) end, { desc = "go to end buffer" } )
