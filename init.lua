if vim.g.vscode then
	--VSCode
	print("hello VS Code")
	vim.g.mapleader = " "

	vim.keymap.set("n", "<C-d>", "<C-d>zz")
	vim.keymap.set("n", "<C-u>", "<C-u>zz")

	vim.keymap.set("n", "n", "nzzzv")
	vim.keymap.set("n", "N", "Nzzzv")

	vim.keymap.set("n", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
	vim.keymap.set("v", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
	vim.keymap.set("n", "<leader>bp", "\"+p", { desc = "Buffer Paste" } )
else
	--Neovim
	require("dylan")
	print("hello")

	vim.opt.backup = false
	vim.opt.swapfile = false

	vim.api.nvim_create_autocmd({ "BufAdd", "BufRead", "BufEnter" } , { command = [[ if search('\%1l--.*$','w') > 0 | set syn=GT | endif ]] } )
end
