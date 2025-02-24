return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"ColaMint/pokemon.nvim",
	},
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local pokemon = require("pokemon")

		pokemon.setup({
			number = "random",
			size = "large",
		})
		dashboard.section.header.val = pokemon.header()

		dashboard.section.buttons.val = {
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd Filetype alpha setlocal nofoldenable]])
		vim.keymap.set("n", "<leader>pd", "<cmd>PokemonTogglePokedex<CR>", { noremap = true })
	end,
}
