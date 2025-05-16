-- Shows context of code line
-- Docs: https://github.com/nvim-treesitter/nvim-treesitter-context
return {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPre", "BufNewFile" },
    enabled = true,
}
