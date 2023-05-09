local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add file to harpoon" } )

vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu, { desc = "Open harpoon menu" } )

vim.keymap.set("n","<leader>hh", function() ui.nav_file(1) end, { desc = "Jump to 1st file in harpoon" } )
vim.keymap.set("n","<leader>hj", function() ui.nav_file(2) end, { desc = "Jump to 2nd file in harpoon" } )
vim.keymap.set("n","<leader>hk", function() ui.nav_file(3) end, { desc = "Jump to 3rd file in harpoon" } )
vim.keymap.set("n","<leader>hl", function() ui.nav_file(3) end, { desc = "Jump to 4th file in harpoon" } )
