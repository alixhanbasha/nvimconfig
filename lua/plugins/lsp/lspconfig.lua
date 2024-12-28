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
            { "<leader>cr", "<cmd>Telescope lsp_references<cr>", desc = "References", mode = "n" },
            { "<leader>cD", vim.lsp.buf.declaration, desc = "Go to definition", mode = "n" },
            { "<leader>cd", "<cmd>Telescope lsp_definitions<cr>", desc = "Definitions", mode = "n" },
            { "<leader>ci", "<cmd>Telescope lsp_implementations<cr>", desc = "Implementations", mode = "n" },
            { "<leader>ct", "<cmd>Telescope lsp_type_definitions<cr>", desc = "Type Definitions", mode = "n" },
            { "<leader>ca", vim.lsp.buf.code_action, desc = "Code actions", mode = "n" },
            { "<leader>cn", vim.lsp.buf.rename, desc = "Smart rename", mode = "n" },
            { "<leader>cR", vim.diagnostic.open_float, desc = "Line diagnostics", mode = "n" },
            { "]d", vim.diagnostic.goto_next, desc = "Goto next diagnostic", mode = "n" },
            { "[d", vim.diagnostic.goto_prev, desc = "Goto previous diagnostic", mode = "n" },
            { "<leader>cH", vim.lsp.buf.hover, desc = "Show documentation", mode = "n" },
            { "<leader>cS", ":LspRestart<CR>", desc = "Restart LSP", mode = "n" },
        })

        local capabilities = cmp_nvim_lsp.default_capabilities()
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "Diagnostic sign: " .. type
            vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
        end

        

    end,
}
