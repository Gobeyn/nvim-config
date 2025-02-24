return {
	"stevearc/dressing.nvim",
	opts = {},
	config = function()
		local dressing = require("dressing")
		dressing.setup({
			input = {
				title_pos = "center",
				start_mode = "insert",
				border = "rounded",
			},
		})
	end,
}
