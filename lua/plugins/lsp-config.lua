return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"cssls",
					"cssmodules_ls",
					"css_variables",
					"eslint",
					"html",
					"jsonls",
					"jdtls",
					"tsserver",
					"pylsp",
					"sqlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.cssls.setup({})
			lspconfig.cssmodules_ls.setup({})
			lspconfig.css_variables.setup({})
			lspconfig.eslint.setup({})
			lspconfig.html.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.sqlls.setup({})

			vim.keymap.set("n", "<leader>cH", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>cD", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
