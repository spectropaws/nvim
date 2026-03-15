return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
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

            automatic_enable = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
            vim.lsp.config("*", {
				capabilities = capabilities,
			})

			vim.keymap.set("n", "<leader>cH", vim.lsp.buf.hover, { desc = "LSP Hover" })
			vim.keymap.set("n", "<leader>cD", vim.lsp.buf.definition, { desc = "LSP Definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
		end,
	},
}
