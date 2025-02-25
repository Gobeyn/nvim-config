-- Show numbers on the side
vim.opt.number = true
-- Show numbers relative to the current line
vim.opt.relativenumber = true

-- Set tabs and indentation settings
vim.opt.autoindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.tabstop = 2

-- Keep text going of screen horizontally instead going to newline.
vim.opt.wrap = false

-- Turn off expand-tab for makefiles
vim.api.nvim_create_autocmd("FileType", {
	desc = "Use tabs for Makefiles isntead of spaces",
	callback = function(event)
		if event.match == "make" then
			vim.opt.autoindent = false
			vim.opt.expandtab = false
		end
	end,
})

-- Add spell checker
vim.opt.spell = true

-- Change spell highlighting to underline
vim.cmd("hi clear SpellBad")
vim.cmd("hi SpellBad cterm=underline")

-- Use system clipboard as default yank register
vim.opt.clipboard:append("unnamedplus")

-- Split windows preferences
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Turn off making .swp files
vim.opt.swapfile = false

-- Remove ~ symbols on the side
vim.opt.fillchars:append({ eob = " " })

-- Enable termguicolors
vim.opt.termguicolors = true
