return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        spec = {
            { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle undo tree", group = "Undo Tree", mode = "n" }, -- group
            
            { "<leader>n", "<cmd>Telescope notify<cr>", desc = "Show notifications", group = "Notify", mode = "n" }, -- group
            
            -- Files
            { "<leader>f", group = "File" }, -- group
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search all files", mode = "n" },
            { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search current file", mode = "n" },
            { "<leader>ft", "<cmd>Telescope grep_string<cr>", desc = "Grep string", mode = "n" },
       
            -- File viewer
            { "<leader>e", group = "File Viewer" },
            { "<leader>ee", "<cmd>Neotree action=show source=filesystem position=left toggle=true<cr>", desc = "Toggle file viewer", mode = "n" },
            { "<leader>eg", "<cmd>Neotree action=show source=git_status position=bottom toggle=true<cr>", desc = "Toggle git status", mode = "n" },
            { "<leader>eb", "<cmd>Neotree action=show source=buffers position=right toggle=true<cr>", desc = "Toggle buffer view", mode = "n" },

            -- Lazy
            { "<leader>l", "<cmd>Lazy<cr>", desc = "Open Lazy", mode = "n", group = "Lazy" },

            -- Window
            { "<leader>w", proxy = "<c-w>", group = "Window" },
            { "<M-q>", "<cmd>Telescope buffers<cr>", desc = "Search active buffers", mode = "n" },
            
            -- Terminal
            { "<leader>t", group = "Terminal" },
            { 
                "<leader>tl", 
                function()
                    require("toggleterm").send_lines_to_terminal("single_line", trim_spaces, { args = vim.v.count })
                end, 
                desc = "Send line to terminal", 
                mode = "n" 
            },
            { 
                "<leader>ts", 
                function()
                    require("toggleterm").send_lines_to_terminal("visual_lines", trim_spaces, { args = vim.v.count })
                end, 
                desc = "Send visual lines to terminal", 
                mode = "v"
            },

            -- Code
            { "<leader>c", group = "Code" },
            { "<leader>cf", "<cmd>Telescope quickfix<cr>", desc = "Quick fixes", mode = "n" },
            { "<leader>cd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics", mode = "n" },
            { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason", mode = "n" },
        }
    }
}
