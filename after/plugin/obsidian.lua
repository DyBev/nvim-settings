require("obsidian").setup({
	dir = "~/Documents/02 projects/01 obsidian/Vault",
})

vim.keymap.set("n", "<leader>oo", vim.cmd.ObsidianOpen, {desc = "Open Obsidian"} )
vim.keymap.set("n", "<leader>os", vim.cmd.ObsidianQuickSwitch, {desc = "Open Obsidian file"} )
vim.keymap.set("n", "<leader>od", vim.cmd.ObsidianToday, {desc = "Open daily Obsidian"} )
vim.keymap.set("n", "<leader>oy", vim.cmd.ObsidianYesterday, {desc = "Open daily Obsidian"} )
vim.keymap.set("n", "<leader>ol", vim.cmd.ObsidianFollowLink, {desc = "Follow link"} )
vim.keymap.set("n", "<leader>on", vim.cmd.ObsidianNew, {desc = "New note"} )
