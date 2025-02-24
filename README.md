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
| [Dressing](https://github.com/stevearc/dressing.nvim) | Improvements on vim UI hooks | None |
| [Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Improvements when viewing Markdown files in Neovim | None |
| [TODO Comments](https://github.com/folke/todo-comments.nvim) | Highlight and search todo-comments | None |
| [Toggleterm](https://github.com/akinsho/toggleterm.nvim) | Open terminal session inside Neovim | None |
| [Rose Pine](https://github.com/rose-pine/neovim) | Rose Pine colorschemes | None |
| [Evergarden](https://github.com/comfysage/evergarden) | Evergarden colorschemes | None |
| [Tokyo Night](https://github.com/folke/tokyonight.nvim) | TokyoNight colorschemes | None |
| [Themery](https://github.com/zaldih/themery.nvim) | Colorscheme switcher | The listed colorschemes |

## Reminders

- In the documentation of Telescope there is a section on LSP pickers where we can search for 
    definitions and such, we should keep this in mind when doing the LSP plugins.
- Look into styling of the buffer line.
- Integration between highlight-colors and nvim-cmp
- Replace dressing with snacks.nvim, as per suggestion by the author (though dressing still works).
- Look into updating the todo-comments config (jumping between comments, quickfix list (:TodoTelescope), colors, icons, etc.)
- Look into telescope integration for todo-comments.
- Look into more themes to add to themery
- Look into replacing neotree with [this](https://github.com/mikavilpas/yazi.nvim) yazi compatibly plugin.
- Look into [this](https://github.com/michaelb/sniprun) repository which can run code snippets in place, 
    it is advertised as a blend between jupyer-like notebooks and REPL/intepreters.

## To Do 

- Do all the LSP stuff
- Go through the [repository](https://github.com/rockerBOO/awesome-neovim) on Neovim plugins and 
    see if there is an interesting one present that we could add.
- IDEA: Make own plugin for getting bib entries from DOI, we already have the shell script
    for it, maybe we can integrate it into Neovim.
