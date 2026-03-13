-- Theming section

-- catppuccin theme & transparency
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
    -- Lualine
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
    {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate'
}

})
