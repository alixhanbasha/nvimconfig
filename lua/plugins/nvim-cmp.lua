return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", 
        "hrsh7th/cmp-path",
        "rafamadriz/friendly-snippets",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },
    config = function(_, opts)
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        require("luasnip.loaders.from_vscode").lazy_load()
        
        local cmpOpts = {
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- navigate up
                ["<C-j>"] = cmp.mapping.select_next_item(), -- navigate down
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),    -- page up
                ["<C-f>"] = cmp.mapping.scroll_docs(4),     -- page down
                ["<C-s>"] = cmp.mapping.complete(),         -- complete the snipet
                ["<C-e>"] = cmp.mapping.abort(),            -- close the window
                ["<TAB>"] = cmp.mapping.confirm({ 
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true 
                }), -- confirm selection
            }),

            sources = cmp.config.sources({
                {name = "luasnip"},
                {name = "buffer"},
                {name = "path"},
            }),
        }
        cmp.setup(cmpOpts)
    end,
}
