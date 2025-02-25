-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Add vim preferences
require("nvim-options")

-- Add custom keybinds that are not plugin dependent
require("nvim-keybinds")

-- Add lazy.nvim and tell it to look in the plugin directory
require("lazy").setup("plugins")
