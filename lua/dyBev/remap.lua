
vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-d>zz")
vim.keymap.set("v", "<C-h>", "<C-d>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-n>", "<C-i>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
vim.keymap.set("v", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
vim.keymap.set("n", "<leader>bp", "\"+p", { desc = "Buffer Paste" } )

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Open file tree"})

-- Substitution keymaps
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("v", "<leader>s", [[<esc>:'<,'>s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitude all occurances of word in visual selection" } )

-- Surround keymaps
vim.keymap.set("n", "<leader>ys[", [["sdiwi[<esc>"spa]<esc>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("n", "<leader>ys{", [["sdiwi{<esc>"spa}<esc>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("n", "<leader>ys'", [["sdiwi'<esc>"spa'<esc>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("n", '<leader>ys"', [["sdiwi"<esc>"spa"<esc>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("v", "<leader>ys[", [["sdi[<esc>"spa]<esc>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("v", "<leader>ys{", [["sdi{<esc>"spa}<esc>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("v", "<leader>ys'", [["sdi'<esc>"spa'<esc>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("v", '<leader>ys"', [["sdi"<esc>"spa"<esc>]], { desc = "Substitude all occurances of word" } )

--Quick fix list keymaps
vim.keymap.set("n", "<leader>eh", [[:cn<CR>]], { desc = "Next Quickfix" } )
vim.keymap.set("n", "<leader>tu", [[:cp<CR>]], { desc = "Previous Quickfix" } )

--Jumplist exclusions
local alphabet = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
for i=1,#alphabet do
	vim.keymap.set("n", "'"..alphabet[i], "g'"..alphabet[i], {desc = "Do not app small marks to jump list"})
end

vim.keymap.set("n", "{", [[:<C-u>execute "keepjumps norm! " . v:count1 . "{"<CR>]], {silent = true})
vim.keymap.set("n", "}", [[:<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>]], {silent = true})

vim.keymap.set("v", "}", function()
	local currentMode = vim.api.nvim_get_mode().mode
	local key = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
	vim.api.nvim_feedkeys(key, "t", true)
	local r1 = vim.fn.getpos("v")[2]
	local currentRow, currentCol = unpack(vim.api.nvim_win_get_cursor(0))
	if r1 > currentRow then
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>'..currentMode..'\'>o', true, false, true)
	else
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>'..currentMode..'\'<o', true, false, true)
	end
	vim.api.nvim_feedkeys(key, "m", true)
end, {silent = false})

vim.keymap.set("v", "{", function()
	local currentMode = vim.api.nvim_get_mode().mode
	local key = vim.api.nvim_replace_termcodes("<C-c>", true, false, true)
	vim.api.nvim_feedkeys(key, "t", true)
	local r1 = vim.fn.getpos("v")[2]
	local currentRow, currentCol = unpack(vim.api.nvim_win_get_cursor(0))
	if r1 > currentRow then
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepjumps norm! " . v:count1 . "{"<CR>'..currentMode..'\'>o', true, false, true)
	else
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepjumps norm! " . v:count1 . "{"<CR>'..currentMode..'\'<o', true, false, true)
	end
	vim.api.nvim_feedkeys(key, "m", true)
end, {silent = false})

