return {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        -- version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    { 'echasnovski/mini.pairs', version = '*' },
    {
        'numToStr/Comment.nvim',
        opts = {  },
        lazy = false,
    }
}
