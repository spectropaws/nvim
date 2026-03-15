return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true,
			integrations = {
				treesitter = true,
				telescope = { enabled = true },
				which_key = true,
				gitsigns = true,
				neotree = true,
				mason = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
