return { 
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local lspcon = require("mason-lspconfig")

        mason.setup({
            ui = {
                check_outdated_packages_on_open = true,
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })

        lspcon.setup({    
            ensure_installed = {
                "ts_ls", "html", "cssls",
                "tailwindcss", "svelte", "lua_ls",
                "graphql", "emmet_ls", "prismals",
                "pyright", "jdtls",
            },
            automatic_installation = true,
        })
    end
}
