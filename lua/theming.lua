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
    })
