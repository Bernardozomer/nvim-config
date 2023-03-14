-- advanced parsing for better syntax highlighting, indentation, etc
return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	event = { 'BufReadPost', 'BufNewFile' },
	--@type TSConfig
	opts = {
		highlight = { enable = true },
		indent = { enable = true, disable = { 'python' } },
		context_commentstring = { enable = true, enable_autocmd = false },
		ensure_installed = {
			'bash',
			'bibtex',
			'c',
			'c_sharp',
			'comment',
			'cpp',
			'fortran',
			'gitcommit',
			'gitignore',
			'help',
			'java',
			'json',
			'json5',
			'latex',
			'lua',
			'make',
			'python',
			'query',
			'regex',
			'sql',
			'toml',
			'vim',
			'yaml'
		}
	},
    --@param opts TSConfig
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
}
