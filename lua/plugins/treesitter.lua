return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"html",
				"css",
				"javascript",
				"typescript",
				"json",
				"php",
				"python",
				"regex",
				"rust",
				"tsx",
				"java",
				"lua",
			},
			auto_install = true,
			hightlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
