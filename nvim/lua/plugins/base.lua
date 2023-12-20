return {
    "folke/which-key.nvim",

	{   'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }},

	'nvim-treesitter/nvim-treesitter',

    {   'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {
        "stevearc/conform.nvim",
        dependencies = { "mason.nvim" },
        lazy = true,
        cmd = "ConformInfo",
        keys = {{
                "<leader>cf",
                function()
                    require("conform").format({ formatters = { "injected" } })
                end,
                mode = { "n", "v" },
                desc = "Format Injected Langs",
    },}
    }
}
