--------------------------------------------------------------
-- [EDITOR SETTINGS] --
--------------------------------------------------------------

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = 
-- vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "90"
vim.g.mapleader = " "


--------------------------------------------------------------
-- [KEY MAP] --
--------------------------------------------------------------
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- vim.keymap.set({'n','v'}, '<M-j>', vim.cmd(":m .+1<CR>=="),{ noremap=true,silent=true})
-- vim.keymap.set({'n','v'}, '<M-k>', vim.cmd(":m .-2<CR>=="),{ noremap=true,silent=true})
