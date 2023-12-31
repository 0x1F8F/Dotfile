require("editor-config") -- load before lazy


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("tokyonight-config") -- colorschme 🌃
require("lualine-config")
require("editor-config.lsp-config")
require("editor-config.formatter")
require("telescope-config")
require("editor-config.terminal")
require("editor-config.remap")  -- keymap
require("editor-config.rust")
require("editor-config.git")
require('Comment').setup()

