
return {
    "neovim/nvim-lspconfig",
    event = {
        "BufReadPre", "BufNewFile"
    },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local wk = require("which-key")

        wk.add({
            { "<leader>l", group = "LSP" },
            { "<leader>ll", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics", mode = "n" },
            { "<leader>lr", "<cmd>Telescope lsp_references<cr>", desc = "References", mode = "n" },
            { "<leader>lD", vim.lsp.buf.declaration, desc = "Go to definition", mode = "n" },
            { "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", desc = "Definitions", mode = "n" },
            { "<leader>li", "<cmd>Telescope lsp_implementations<cr>", desc = "Implementations", mode = "n" },
            { "<leader>lt", "<cmd>Telescope lsp_type_definitions<cr>", desc = "Type Definitions", mode = "n" },
            { "<leader>la", vim.lsp.buf.code_action, desc = "Code actions", mode = "n" },
            { "<leader>ln", vim.lsp.buf.rename, desc = "Smart rename", mode = "n" },
            { "<leader>lR", vim.diagnostic.open_float, desc = "Line diagnostics", mode = "n" },
            { "]d", vim.diagnostic.goto_next, desc = "Goto next diagnostic", mode = "n" },
            { "[d", vim.diagnostic.goto_prev, desc = "Goto previous diagnostic", mode = "n" },
            { "<leader>lh", vim.lsp.buf.hover, desc = "Show documentation", mode = "n" },
            { "<leader>ls", ":LspRestart<CR>", desc = "Restart LSP", mode = "n" },
        })

        local capabilities = cmp_nvim_lsp.default_capabilities()
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        lspconfig["html"].setup({
            capabilities = capabilities
        })

        lspconfig["ts_ls"].setup({
            capabilities = capabilities
        })

        lspconfig["cssls"].setup({
            capabilities = capabilities
        })

        lspconfig["tailwindcss"].setup({
            capabilities = capabilities
        })

        lspconfig["pyright"].setup({
            capabilities = capabilities
        })

        lspconfig["jdtls"].setup({
            capabilities = capabilities
        })

        lspconfig["cucumber_language_server"].setup({
            capabilities = capabilities,
            filetypes = {
                "feature", "gherkin", "cucumber"
            }
        })

        lspconfig["gopls"].setup({
            capabilities = capabilities
        })

        lspconfig["jsonls"].setup({
            capabilities = capabilities
        })

        lspconfig["marksman"].setup({
            capabilities = capabilities
        })

        lspconfig["phpactor"].setup({
            capabilities = capabilities
        })

        lspconfig["csharp_ls"].setup({
            capabilities = capabilities
        })

        lspconfig["emmet-ls"].setup({
            capabilities = capabilities,
            filetypes = {
                "html", "typescriptreact", "javascriptreact",
                "css", "sass", "scss", "less", "svelte",
            },
        })

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true
                        }
                    },
                },
            },
        })

    end,
}
