-- highly extensible fuzzy finder over lists
-- TODO: add keybindings, lsp-zero and project.nvim integration
return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = true,
}
