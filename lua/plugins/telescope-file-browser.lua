return {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = {
		'nvim-telescope/telescope.nvim',
		'nvim-lua/plenary.nvim'
	},
	config = function ()
		require('project_nvim').setup()
	end
}
