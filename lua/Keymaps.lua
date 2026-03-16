                    --Keymaps Config--
--Toggle Project View--
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Sidebar explorer--
    vim.keymap.set("n", "<leader>e", ":Lex 30<CR>")
--Normal mode toggle--
    vim.keymap.set("i", "jj", "<Esc>")
    vim.keymap.set("i", "kk", "<Esc>")

--Split keybindings--
    vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", { desc = "vertical split" })
    vim.keymap.set("n", "<leader>hs", ":split<CR>", { desc = "Horizontal split" })
    vim.keymap.set("n", "<leader><CR>", ":close<CR>", { desc = "close current window" })

--Split motion keybindings--
    vim.keymap.set("n", "<C-h>", "<C-w>h") -- Move left
    vim.keymap.set("n", "<C-j>", "<C-w>j") -- Move down
    vim.keymap.set("n", "<C-k>", "<C-w>k") -- Move up
    vim.keymap.set("n", "<C-l>", "<C-w>l") -- Move right
