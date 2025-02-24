return {
	"zaldih/themery.nvim",
	dependencies = { "comfysage/evergarden", "rose-pine/neovim", "folke/tokyonight.nvim" },
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "Neovim Default",
					colorscheme = "default",
				},
				{
					name = "Rose Pine Moon",
					colorscheme = "rose-pine-moon",
				},
				{
					name = "Rose Pine Dawn",
					colorscheme = "rose-pine-dawn",
				},
				{
					name = "Evergarden",
					colorscheme = "evergarden",
				},
				{
					name = "TokyoNight Moon",
					colorscheme = "tokyonight-moon",
				},
				{
					name = "TokyoNight Storm",
					colorscheme = "tokyonight-storm",
				},
				{
					name = "TokyoNight Night",
					colorscheme = "tokyonight-night",
				},
				{
					name = "TokyoNight Day",
					colorscheme = "tokyonight-day",
				},
			},
			livePreview = true,
		})
	end,
	vim.keymap.set("n", "<leader>cs", "<cmd>Themery<CR>", {}),
}
