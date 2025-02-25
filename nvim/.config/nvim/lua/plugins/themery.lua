return {
	"zaldih/themery.nvim",
	dependencies = {
		{ "comfysage/evergarden", opts = { variant = "hard" } },
		"rose-pine/neovim",
		"folke/tokyonight.nvim",
		"Mofiqul/dracula.nvim",
		"catppuccin/nvim",
		"Mofiqul/vscode.nvim",
		"nvimdev/zephyr-nvim",
	},
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
				{
					name = "Dracula",
					colorscheme = "dracula",
				},
				{
					name = "Catppuccin Latte",
					colorscheme = "catppuccin-latte",
				},
				{
					name = "Catppuccin Mocha",
					colorscheme = "catppuccin-mocha",
				},
				{
					name = "Catppuccin Macchiato",
					colorscheme = "catppuccin-macchiato",
				},
				{
					name = "Catpuccin Frappe",
					colorscheme = "catppuccin-frappe",
				},
				{
					name = "VS Code",
					colorscheme = "vscode",
				},
				{
					name = "Zephyr",
					colorscheme = "zephyr",
				},
			},
			livePreview = true,
		})
	end,
	vim.keymap.set("n", "<leader>cs", "<cmd>Themery<CR>", {}),
}
