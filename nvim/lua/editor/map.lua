local home = os.getenv 'HOME'

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- --
vim.opt.termguicolors = true
vim.opt.rnu = true
vim.opt.nu = true
vim.opt.numberwidth = 3
vim.opt.cul = true
vim.opt.ic = false
vim.opt.showbreak = '> '
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.scrolloff = 12
vim.opt.undofile = true
vim.opt.undolevels = 500
vim.opt.undodir = home .. '/.cache/nvim/undo/'
vim.opt.backup = true
vim.opt.backupdir = home .. '/.cache/nvim/backups/'
vim.opt.wrap = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true

vim.cmd.colorscheme 'catppuccin-macchiato'

-- keymaps
-- toggle comment "<leader>gc<leader>" works in normal as well as visual
--
-- norm
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>gf', ':Telescope git_files<CR>')
vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>fm', ':Ex<CR>')
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>1', ':bnext<CR>')
vim.keymap.set('n', '<leader>2', ':bprevious<CR>')
vim.keymap.set('n', '<leader>3', ':bdelete<CR>')
vim.keymap.set('n', '<leader>e', ':NvimTreeOpen<CR>')
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>h', ':wincmd h<CR>') -- nav
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>') -- nav
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>') -- nav
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>') -- nav
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>a", '<Cmd>AerialToggle<CR>')

-- ins
vim.keymap.set('i', '<C-f>', '<Cmd>Telescope find_files<CR>')

-- alias
vim.keymap.set('n', '<leader>n', ':bnext<CR>')
vim.keymap.set('n', '<leader>p', ':bprevious<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope git_files<CR>')
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>')

-- preserve cursor position
vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*',
  callback = function()
    local row, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
    if row > 0 and row <= vim.api.nvim_buf_line_count(0) then
      vim.api.nvim_win_set_cursor(0, { row, col })
    end
  end,
})


vim.diagnostic.config({
    virtual_text = true,
    float = {
        focusable = false,
        -- style = "minimal",
        -- border = "none",
        source = "always",
        -- header = "[ Diagnostic ]",
        -- prefix = "",
    },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})
