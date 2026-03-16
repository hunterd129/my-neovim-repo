--Catppuccin theme & transparency
return {
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
--Smear cursor
    {
        "sphamba/smear-cursor.nvim",
        opts = {},
    }
}

