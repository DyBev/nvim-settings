
return {
	"mbbill/undotree",
	name = "undotree",

	config = function ()

		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "open Undo tree" } )
	end
}

