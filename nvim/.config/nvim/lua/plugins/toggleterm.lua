return {
	"akinsho/toggleterm.nvim",
	-- tag = "main",
	config = function()
		local tt = require("toggleterm")
		tt.setup({
			direction = "float",
			start_in_insert = true,
			float_opts = {
				border = "curved",
				title_pos = "center",
			},
		})
		vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
	end,
}
