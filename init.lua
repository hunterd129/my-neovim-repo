						--Neovim Config--
--Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

--basic appearance--
vim.o.number = true 
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.g.have_nerd_font = true

--tab sizing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

--Keybindings
require("keymaps")

--Plugin theme--
require("theming")

--Syntax Hightlighting--
vim.cmd('syntax enable')

--status bar--
vim.opt.laststatus = 3

--transparency--
local highlights = {
    "Normal", "NormalNC", "SignColumn", "StatusLine", "StatusLineNC", "EndOfBuffer"
}
for _, group in ipairs(highlights) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
end
