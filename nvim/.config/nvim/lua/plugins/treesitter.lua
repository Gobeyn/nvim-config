return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"json",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"make",
				"lua",
				"luadoc",
				"vim",
				"gitignore",
				"vimdoc",
				"c",
				"cmake",
				"cpp",
				"doxygen",
				"haskell",
				"python",
				"rust",
				"vimdoc",
			},
		})
	end,
}
