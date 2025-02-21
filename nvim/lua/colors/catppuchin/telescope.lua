local colors = require 'catppuccin.palettes.mocha'

local TelescopePrompt = {
	TelescopePreviewTitle = { fg = colors.crust, bg = colors.red },
	TelescopePromptTitle = { fg = colors.crust, bg = colors.red },
	TelescopeResultsTitle = { fg = colors.crust, bg = colors.red },
	TelescopeBorder = { fg = colors.crust, bg = colors.crust },
	TelescopeNormal = { bg = colors.crust },

	TelescopePromptBorder = { fg = colors.mantle, bg = colors.mantle },
	TelescopePromptNormal = { fg = colors.text, bg = colors.mantle },
	TelescopePromptPrefix = { fg = colors.red, bg = colors.mantle },
}


for hl, col in pairs(TelescopePrompt) do
  vim.api.nvim_set_hl(0, hl, col)
end

local GitSignsColor = {
  GitSignsAdd = { fg=colors.teal },
  GitSignsChange = { fg=colors.peach },
}

for hl, col in pairs(GitSignsColor) do
  vim.api.nvim_set_hl(0, hl, col)
end

