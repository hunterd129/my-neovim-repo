--Mini icons
return {
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
    }
}
