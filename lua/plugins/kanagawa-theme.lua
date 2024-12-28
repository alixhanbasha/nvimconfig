return { 
    "rebelot/kanagawa.nvim", 
    lazy = false, 
    name = "kanagawa",
    priority = 1000,
    opts = {
        transparent = true,
        dimInactive = true
    },
    config = function()
        vim.cmd.colorscheme "kanagawa-dragon"
    end
}
