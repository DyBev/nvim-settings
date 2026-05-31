
vim.g.mapleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<Nop>")

vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-n>", "<C-i>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
vim.keymap.set("v", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
vim.keymap.set("n", "<leader>bp", "\"+p", { desc = "Buffer Paste" } )

-- Disabled becuase I am forced to use OIL for kotlin waaa waaa womp womp
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Open file tree"})
vim.keymap.set("n", "<leader>pv", vim.cmd.Oil, {desc = "Open file tree"})

-- Substitution keymaps
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitude all occurances of word" } )
vim.keymap.set("v", "<leader>s", [[<esc>:'<,'>s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitude all occurances of word in visual selection" } )

-- surround keymaps
local surroundingchars = {
	{"{", "}"},
	{"[", "]"},
	{"\"", "\""},
	{"'", "'"},
	{"(", ")"},
}
for i=1,#surroundingchars do
	vim.keymap.set("n", "<leader>as"..surroundingchars[i][1], [["sdiwi]]..surroundingchars[i][1]..[[<esc>"spa]]..surroundingchars[i][2]..[[<esc>]], { desc = "surround word with "..surroundingchars[i][1]..surroundingchars[i][2] } )
	vim.keymap.set("v", "<leader>as"..surroundingchars[i][1], [["sdi]]..surroundingchars[i][1]..[[<esc>"spa]]..surroundingchars[i][2]..[[<esc>]], { desc = "surround selection with "..surroundingchars[i][1]..surroundingchars[i][2] } )
	vim.keymap.set("n", "<leader>as"..surroundingchars[i][2], [["sdiwi]]..surroundingchars[i][1]..[[<esc>"spa]]..surroundingchars[i][2]..[[<esc>]], { desc = "surround word with "..surroundingchars[i][1]..surroundingchars[i][2] } )
	vim.keymap.set("v", "<leader>as"..surroundingchars[i][2], [["sdi]]..surroundingchars[i][1]..[[<esc>"spa]]..surroundingchars[i][2]..[[<esc>]], { desc = "surround selection with "..surroundingchars[i][1]..surroundingchars[i][2] } )
end

--Quick fix list keymaps
vim.keymap.set("n", "<leader>fn", [[:cn<CR>]], { desc = "Next Quickfix" } )
vim.keymap.set("n", "<leader>fp", [[:cp<CR>]], { desc = "Previous Quickfix" } )
vim.keymap.set("n", "<leader>fc", [[:cclose<CR>]], { desc = "Close Quickfix" })

--Jumplist exclusions
local alphabet = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
for i=1,#alphabet do
	vim.keymap.set("n", "'"..alphabet[i], "g'"..alphabet[i], {desc = "Do not app small marks to jump list"})
end

vim.keymap.set("n", "{", [[:<C-u>execute "keepj norm! " . v:count1 . "{"<CR>]], {silent = true})
vim.keymap.set("n", "}", [[:<C-u>execute "keepj norm! " . v:count1 . "}"<CR>]], {silent = true})

vim.keymap.set("v", "}", function()
	local currentMode = vim.api.nvim_get_mode().mode
	local key = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
	vim.api.nvim_feedkeys(key, "t", true)
	local r1 = vim.fn.getpos("v")[2]
	local currentRow, currentCol = unpack(vim.api.nvim_win_get_cursor(0))
	if r1 > currentRow then
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepj norm! " . v:count1 . "}"<CR>'..currentMode..'\'>o', true, false, true)
	else
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepj norm! " . v:count1 . "}"<CR>'..currentMode..'\'<o', true, false, true)
	end
	vim.api.nvim_feedkeys(key, "t", true)
end, {silent = false})

vim.keymap.set("v", "{", function()
	local currentMode = vim.api.nvim_get_mode().mode
	local key = vim.api.nvim_replace_termcodes("<C-c>", true, false, true)
	vim.api.nvim_feedkeys(key, "t", true)
	local r1 = vim.fn.getpos("v")[2]
	local currentRow, currentCol = unpack(vim.api.nvim_win_get_cursor(0))
	if r1 > currentRow then
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepj norm! " . v:count1 . "{"<CR>'..currentMode..'\'>o', true, false, true)
	else
		key = vim.api.nvim_replace_termcodes(':<C-u>execute "keepj norm! " . v:count1 . "{"<CR>'..currentMode..'\'<o', true, false, true)
	end
	vim.api.nvim_feedkeys(key, "t", true)
end, {silent = false})

