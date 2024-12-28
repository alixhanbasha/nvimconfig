return { 
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate", 
    opts = {
        ensure_installed = { 
            "lua", "bash", "java", 
            "javascript", "typescript", 
            "go", "rust", "c", 
            "python", "php" 
        },
        highlight = { enable = true },
        indent = { enable = true }
    }
}

