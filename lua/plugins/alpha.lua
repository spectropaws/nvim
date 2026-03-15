return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene <BAR> startinsert<CR>"),
			dashboard.button("f", "  Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("g", "  Live grep", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("l", "  Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
		}

		dashboard.section.footer.val = function()
			local stats = require("lazy").stats()
			local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
			return "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms"
		end

		alpha.setup(dashboard.opts)
	end,
}
