-- bundle all the "boilerplate code" necessary for nvim-cmp, lsp-config
-- and mason.nvim to work together
return {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	config = function()
		local lsp = require('lsp-zero').preset({
			name = 'recommended',
			-- avoid conflicts with which-key
			set_lsp_keymaps = { preserve_mappings = false },
		})

		-- (optional) configure lua language server for neovim
		lsp.nvim_workspace()

		lsp.setup()
	end,
	dependencies = {
		-- LSP support
		{'neovim/nvim-lspconfig'},             -- required
		{'williamboman/mason.nvim'},           -- optional
		{'williamboman/mason-lspconfig.nvim'}, -- optional

		-- autocompletion
		{'hrsh7th/nvim-cmp'},         -- required
		{'hrsh7th/cmp-nvim-lsp'},     -- required
		{'hrsh7th/cmp-buffer'},       -- optional
		{'hrsh7th/cmp-path'},         -- optional
		{'saadparwaiz1/cmp_luasnip'}, -- optional
		{'hrsh7th/cmp-nvim-lua'},     -- optional

		-- snippets
		{'L3MON4D3/LuaSnip'},             -- required
		{'rafamadriz/friendly-snippets'}, -- optional
	}
}
