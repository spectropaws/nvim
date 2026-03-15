return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")

			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			telescope.load_extension("ui-select")

			-- Keymaps
			vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope: Find Files" })
			vim.keymap.set("n", "<leader><leader>", builtin.live_grep, { desc = "Telescope: Live Grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: Buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: Help Tags" })
		end,
	},
}
