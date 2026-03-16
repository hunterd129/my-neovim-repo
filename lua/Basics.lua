        --Basic neovim settings--

--Basic appearance--
    vim.o.number = true 
    vim.o.relativenumber = true
    vim.o.cursorline = true
    vim.o.termguicolors = true
    vim.g.have_nerd_font = true
    vim.opt.scrolloff = 8
    vim.cmd('syntax enable')

--Tab sizing--
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.softtabstop = 4

--Code Folding--
    vim.opt.foldmethod = "indent"
    vim.opt.foldlevel = 99

--Snacks.nvim requirements
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
