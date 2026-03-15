return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "catppuccin",
    },
    config = function()
        local function setup_lualine()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    globalstatus = true,
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "", right = "" },
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { { "filename", path = 1 } },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
            })
        end

        if vim.g.colors_name then
            setup_lualine()
        else
            vim.api.nvim_create_autocmd("ColorScheme", {
                once = true,
                callback = setup_lualine,
            })
        end
    end,
}
