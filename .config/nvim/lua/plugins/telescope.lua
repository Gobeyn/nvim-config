return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {}) -- Find File
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", {}) -- Find String
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", {}) -- Find Recent
		vim.keymap.set("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", {}) -- Find Colorscheme
		vim.keymap.set("n", "<leader>fw", "<cmd>Telescope spell_suggest<CR>", {}) -- Find Word
		vim.keymap.set("n", "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<CR>", {}) -- Find Buffer
	end,
}
