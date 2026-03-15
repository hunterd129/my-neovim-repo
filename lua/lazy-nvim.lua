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

--Lazy.nvim plugins--
require("lazy").setup({
--Catppuccin theme & transparency--
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                integrations = {
                    mini = {
                        enabled = true,
                        indentscope_color = "rosewater",
                    },
                },
            })
            vim.cmd.colorscheme("catppuccin")
        end
    },
--Lualine--
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'mini.icons' },
        config = function()
            require('lualine').setup({
                options = {
                    icons_enabled = true,
                    theme = 'auto', 
                    component_separators = { left = '', right = ''}, 
                    section_separators = { left = '', right = ''},
                    globalstatus = true,
                }
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
    },
--Mini icons
    {
        'echasnovski/mini.icons',
        lazy = false,
        opts = {},
        init = function()
            package.preload['nvim-web-devicons'] = function()
                require('mini.icons').mock_nvim_web_devicons()
                return package.loaded['nvim-web-devicons']
            end
        end,
    },
--Mini files
    {
        'echasnovski/mini.files',
        version = false,
        lazy = false,
        opts = {
            windows = {
                preview = true,
                width_focus = 30,
                width_preview = 30,
            },
            options = {
                use_as_default_explorer = true,
            },
        },
        keys = {
            
            {
                "<leader>e",
                function() require('mini.files').open(vim.api.nvim_buf_get_name(0), true) end,
                desc = "open mini.files (Directory of current file)"
            },
        },
    },
--Snacks.nvim
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            indent = { enabled = true },
            notifier = { enabled = true },
            picker = { enabled = true },
            scroll = { enabled = true },
        },
        keys = {
            {
                "<leader>pv",
                function()
                    Snacks.picker.files({
                        layout = "vertical",
                        fullscreen = true,
                    })
                end,
                desc = "Project Files (Snacks Picker)",
            },
        },
    },
})
