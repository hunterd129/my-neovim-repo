return {
--Noice.nvim
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {
        lsp = {
            hover = { enabled = false },
            signature = { enabled = false },
            message = { enabled = false },
        },
        presets = {
            bottom_search = false,
            command_palette = true,
            long_message_to_split = true,
        },
    },
}




