--General appearance
return {

--Catppuccin theme & transparency
--[[        
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
--]]    
--Smear cursor
    {
        "sphamba/smear-cursor.nvim",
        opts = {},
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night",
                transparent = true,
                styles = {
                    sidebars = "dark",
                    floats = "dark",
                },
            })
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    }

}

