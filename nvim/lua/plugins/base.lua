return {
	"folke/which-key.nvim",

	{   'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }},

	'nvim-treesitter/nvim-treesitter',

    {   'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    "numToStr/FTerm.nvim",
}
