return {
    {
        'akinsho/toggleterm.nvim', 
        version = "*", 
        config = true
    },
    {
        'akinsho/toggleterm.nvim', 
        version = "*", 
        opts = {
            open_mapping = [[<c-\>]],
            shade_terminals = true,
            shading_factor = -50,
            start_in_insert = true,
            direction = 'float',
            auto_scroll = true,
            float_opts = {
                border = 'double',
                title_pos = 'center'
            }
        }
    }
}
