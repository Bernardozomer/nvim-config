-- load modules
require('config')
require('keybinds')
require('lazy-nvim')

-- set colorscheme
local colorscheme = 'gruvbox-material'
local colorscheme_set, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not colorscheme_set then
	vim.api.nvim_err_writeln('Error setting colorscheme ' .. colorscheme)
end
