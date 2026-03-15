return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			window = {
				width = 40,
                auto_expand_width = true,
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
				use_libuv_file_watcher = true,
			},

			default_component_configs = {
				indent = {
					with_markers = true,
					indent_markers = "│",
				},
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "",
				},
				git_status = {
					symbols = {
						-- Change symbols for git
						added = "✚",
						modified = "",
						deleted = "✖",
						renamed = "➜",
						untracked = "",
						ignored = "",
						unstaged = "",
						staged = "",
						conflict = "",
					},
				},
			},
		})
		vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle left<CR>", { desc = "Toggle file explorer" })
	end,
}
