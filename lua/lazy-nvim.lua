        --Lazy Plugins--

--Bootstrap lazy.nvim--
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

--Catppuccin theme & transparency--
require("lazy").setup({
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true, -- Native transparency handling
            })
            vim.cmd.colorscheme("catppuccin")
        end
    },
--Lualine--
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'catppuccin-mocha', 
                    component_separators = { left = '', right = ''}, 
                    section_separators = { left = '', right = ''},
                    globalstatus = true,
                }
            })
        end
    },
--Treesitter--
    {
     'nvim-treesitter/nvim-treesitter',
      lazy = false,
      build = ':TSUpdate',
      config = function()
          vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/site")
          require('nvim-treesitter.install').compilers = { "zig" }
          require('nvim-treesitter').setup({
              ensure_installed = { "lua", "rust", "vim", "vimdoc", "query" },
              highlight = {
                  enable = true,
              },
          })
      end
    },
--Smear cursor
    {
        "sphamba/smear-cursor.nvim",
        opts = {},
    },
--Which key
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
        }
    }
})
