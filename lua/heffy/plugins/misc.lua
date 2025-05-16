return {
    {
        -- tmux & split window navigation
        "christoomey/vim-tmux-navigator",
    },
    {
        -- detect tabstop and shiftwidth automatically
        "tpope/vim-sleuth"
    },
    {
        -- powerfult git intergation for vim
        "tpope/vim-fugitive"
    },
    {
        -- github integration for vim-fugitive
        "tpope/vim-rhubarb"
    },
    {
        -- autoclose parenthese, brackets, quotes, etc
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        opts = {}
    },
    {
        -- high-performance color highlighter
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    }
}
