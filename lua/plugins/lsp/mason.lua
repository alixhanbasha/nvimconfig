return { 
    "williamboman/mason.nvim",
    dependencies = {
        {
            "williamboman/mason-lspconfig.nvim",
            opts = {
                ensure_installed = {
                    "tsserver", "html", "cssls",
                    "tailwindcss", "svelte", "lua_ls",
                    "graphql", "emmet_ls", "prismals",
                    "pyright", "jdtls"
                },
                automatic_installation = true,
            }
        },
    },
    opts =  {
        ui = {
            check_outdated_packages_on_open = true,
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
}
