-- better colors
vim.opt.termguicolors = true

-- better splits
vim.o.splitbelow = true
vim.o.splitright = true

-- delete trailing whitespace on save
StripTrailingWhitespaces = function ()
	local l = vim.fn.line('.')
	local c = vim.fn.col('.')
	vim.cmd("%s/\\s\\+$//e")
	-- preserve cursor position
	vim.cmd(":call cursor(" .. l .. ", " .. c .. ")")
end

vim.api.nvim_exec(
	[[autocmd BufWritePre * :lua StripTrailingWhitespaces()]],
	false
)

-- disable line wrapping
vim.o.wrap = false

-- enable hybrid line numbers
vim.o.number = true

vim.api.nvim_exec([[
		augroup numbertoggle
			autocmd!
			autocmd BufEnter,FocusGained,WinEnter * if &nu | set rnu   | endif
			autocmd BufLeave,FocusLost,WinLeave   * if &nu | set nornu | endif
		augroup END
	]],
	false
)

-- fix indentation
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- hide the current mode to avoid visual conflict with the statusline plugin
vim.o.showmode = false

-- highlight the cursor line
vim.o.cursorline = true

-- highlight column 80
vim.o.colorcolumn = "80"

-- highlight yanked lines
vim.api.nvim_exec([[
		augroup highlight_yank
			autocmd!
			au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=150}
		augroup END
	]],
	false
)

-- minimal number of screen lines to keep above and below cursor
vim.opt.scrolloff = 8

-- minimal number of characters to keep left and right of the cursor
vim.opt.sidescrolloff = 8
