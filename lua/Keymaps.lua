                    --Keymaps Config--
--Keymaps Config
local map = vim.keymap.set

--Project view
map("n", "<leader>pv", function()
	require("snacks").picker.files({
        	layout = "vertical",
        	fullscreen = true,
    })
end, { desc = "Project Files (Snacks)" })

--Sidebar explorer--
map("n", "<leader>e", function()
    require('mini.files').open(vim.api.nvim_buf_get_name(0), true)
end, { desc = "Open mini.files" })

--Normal mode toggle--
vim.keymap.set("i", "jk", "<Esc>")

--Split keybindings--
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", { desc = "vertical split" })
vim.keymap.set("n", "<leader>hs", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader><CR>", ":close<CR>", { desc = "close current window" })

--Split motion keybindings--
vim.keymap.set("n", "<C-h>", "<C-w>h") -- Move left
vim.keymap.set("n", "<C-j>", "<C-w>j") -- Move down
vim.keymap.set("n", "<C-k>", "<C-w>k") -- Move up
vim.keymap.set("n", "<C-l>", "<C-w>l") -- Move right
