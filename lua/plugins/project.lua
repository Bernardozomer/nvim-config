-- project management tool
-- automatically cd to project directory and telescope integration
return {
	'ahmedkhalf/project.nvim',
	config = function ()
		require('project_nvim').setup()
	end
}
