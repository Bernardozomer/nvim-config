-- git integration
return {
	'lewis6991/gitsigns.nvim',
	tag = 'release',
	opts = {
		current_line_blame = true,
		signs = { untracked = { text  = '┊'} },
		word_diff = true,
	},
	config = true,
}
