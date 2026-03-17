--Snacks.nvim
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        indent = {
            enabled = true,
            char = "│",
            scope = {
                enabled = true,
                char = "│",
                underline = false,
            },
            chunk = {
                enabled = true,
            },
        },
        notifier = { enabled = true },
        picker = { enabled = true },
        scroll = { enabled = true },
    },
}





