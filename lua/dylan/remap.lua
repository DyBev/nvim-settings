vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
vim.keymap.set("v", "<leader>by", "\"+y", { desc = "Buffer Yank" } )
vim.keymap.set("n", "<leader>bp", "\"+p", { desc = "Buffer Paste" } )

vim.keymap.set("n", "<leader>bs", "<C-^>", {desc = "Buffer Switch"})
vim.keymap.set("n", "<leader>bc", vim.cmd.bd, {desc = "Buffer Close"})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitude all occurances of word" } )
