return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	dependencies = { "folke/snacks.nvim", lazy = false },
	keys = {
		{
			"<leader>ee", -- Explorer
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
		{
			-- Open in the current working directory
			"<leader>ed", -- Explorer Directory
			"<cmd>Yazi cwd<cr>",
			desc = "Open the file manager in nvim's working directory",
		},
		{
			"<leader>et", -- Explorer Toggle
			"<cmd>Yazi toggle<cr>",
			desc = "Resume the last yazi session",
		},
	},
	opts = {
		-- if you want to open yazi instead of netrw, see below for more info
		open_for_directories = false,
		keymaps = {
			show_help = "<f1>",
		},
	},
}
