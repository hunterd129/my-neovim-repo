						--Neovim Config--
--basic appearance--
    vim.o.number = true 
    vim.o.relativenumber = true
    vim.o.cursorline = true
    vim.o.termguicolors = true
    vim.g.have_nerd_font = true
    vim.opt.scrolloff = 8

--tab sizing--
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.softtabstop = 4

--Keybindings--
    require("keymaps")

--Lazy nvim plugins--
    require("lazy-nvim")
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

--Syntax Hightlighting--
    vim.cmd('syntax enable')

--status bar--
    vim.opt.laststatus = 3

