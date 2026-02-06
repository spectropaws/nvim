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
					"ts_ls",
					"pylsp",
					"sqlls",
					"bashls",
					"rust_analyzer",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities =
				require("cmp_nvim_lsp").default_capabilities()

			local servers = {
				"lua_ls",
				"clangd",
				"cssls",
				"cssmodules_ls",
				"css_variables",
				"eslint",
				"html",
				"jsonls",
				"jdtls",
				"ts_ls",
				"pylsp",
				"sqlls",
				"bashls",
				"rust_analyzer",
			}

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server)
			end

			-- Keymaps
			vim.keymap.set("n", "<leader>cH", vim.lsp.buf.hover)
			vim.keymap.set("n", "<leader>cD", vim.lsp.buf.definition)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
		end,
	},
}
