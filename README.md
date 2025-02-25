# Neovim Configuration

This repository contains my Neovim configuration. Naturally, this requires [neovim](https://github.com/neovim/neovim) 
to be installed. For future reference, [this](https://github.com/rockerBOO/awesome-neovim) repository
contains a list of (possibly) useful Neovim plugins.

## General

Preferences and key bindings that are independent of any plugins are handled in the
`lua/nvim-options.lua` and `lua/nvim-keybinds.lua` files.

## Dependencies

The following programs are required for the full installation, in the plugin section we 
list which plugin requires which dependencies in case not all of then are needed.

- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [yazi](https://github.com/sxyazi/yazi)
- [npm](https://www.npmjs.com/)


## Plugins

The plugin manager used for this configuration is [Lazy](https://github.com/folke/lazy.nvim). This
will be installed automatically if it is not already installed.

| Plugin | Description | Dependencies |
|--------|-------------|--------------|
| [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting | None |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder | `fzf`, `ripgrep` |
| [Lualine](https://github.com/nvim-lualine/lualine.nvim) | Status line at the bottom | None |
| [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | Lines to show indentations | None |
| [Bufferline](https://github.com/akinsho/bufferline.nvim) | Line at the top with open tabs (buffers) | None |
| [Highlight Colors](https://github.com/brenoprata10/nvim-highlight-colors) | Display colors within buffer | None |
| [Alpha](https://github.com/goolord/alpha-nvim) | Greeter when opening neovim without a file | None but see this [pokemon plugin](https://github.com/ColaMint/pokemon.nvim) |
| [Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Improvements when viewing Markdown files in Neovim | None |
| [TODO Comments](https://github.com/folke/todo-comments.nvim) | Highlight and search todo-comments | None |
| [Toggleterm](https://github.com/akinsho/toggleterm.nvim) | Open terminal session inside Neovim | None |
| [Themery](https://github.com/zaldih/themery.nvim) | Colorscheme switcher | Various colorschemes listed in the file |
| [Snacks](https://github.com/folke/snacks.nvim) | Quality of life features, most notably UI elements | None |
| [Yazi](https://github.com/mikavilpas/yazi.nvim) | Yazi file explorer in Neovim | `yazi` |
| [Mason](https://github.com/williamboman/mason.nvim) | Installer for LSP server, DAP servers, linters and formatters | None |
| [LSP Config](https://github.com/neovim/nvim-lspconfig) | Neovim LSP client | `npm` |
| [Neovim Completion](https://github.com/hrsh7th/nvim-cmp) | Autocompletion and snippets | None |
| [Linter](https://github.com/mfussenegger/nvim-lint) | Linter for Neovim LSP clieant | None |
| [Formatting](https://github.com/stevearc/conform.nvim) | Code formatter | None |
| [Auto Pairs](https://github.com/windwp/nvim-autopairs) | Automatically add pair of bracket, quotations mark, etc. | None |

## Install

To install this we suggest creating a symbolic link, for instance by using [GNU Stow](https://www.gnu.org/software/stow/).
In that case one can run `stow nvim` in the repository root which will create a symbolic link with `~/.config/nvim`. 
Be careful that a symbolic doesn't already exist! To remove the symbolic link created here 
one can run `stow -D nvim` in the repository root.

