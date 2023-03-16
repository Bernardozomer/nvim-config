-- highly extensible fuzzy finder over lists
return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = {
		require('telescope').load_extension('projects')
	},
	keys = {
		-- vim pickers
		{ '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>' },
		{ '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>' },
		{ '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>' },
		{ '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<CR>' },
		{ '<leader>fm', '<cmd>lua require(\'telescope.builtin\').marks()<CR>' },
		{ '<leader>fo', '<cmd>lua require(\'telescope.builtin\').oldfiles()<CR>' },
		{ '<leader>fr', '<cmd>lua require(\'telescope.builtin\').registers()<CR>' },
		-- lsp pickers
		{ '<leader>gds', '<cmd>lua require(\'telescope.builtin\').lsp_document_symbols()<CR>' },
		{ '<leader>gci', '<cmd>lua require(\'telescope.builtin\').lsp_incoming_calls()<CR>' },
		{ '<leader>gco', '<cmd>lua require(\'telescope.builtin\').lsp_outgoing_calls()<CR>' },
		{ '<leader>gr', '<cmd>lua require(\'telescope.builtin\').lsp_references()<CR>' },
		-- extension: projects
		{ '<leader>ep', '<cmd>lua require(\'telescope\').extensions.projects.projects()<CR>' },
	},
}
