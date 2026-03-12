                    -- Keymaps

-- Set leader to space
    vim.g.mapleader = " "

-- Toggle Project View (EX) with <Leader>pv
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Sidebar explorer (Lex) with <Leader>e
    vim.keymap.set("n", "<leader>e", ":Lex 30<CR>")
--Normal mode toggle
    vim.keymap.set("i", "jj", "<Esc>")
    vim.keymap.set("i", "kk", "<Esc>")


-- Netrw Aesthetic Tweaks
    vim.g.netrw_banner = 0		-- Hide help banner
    vim.g.netrw_winsize = 25	-- Side window width
    vim.g.netrw_liststyle = 3	-- Tree view

