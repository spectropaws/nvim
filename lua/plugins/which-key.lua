return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern",
        delay = 300,
        spec = {
            { "<leader>c", group = "Code / LSP" },
            { "<leader>h", group = "Git Hunks" },
            { "<leader>t", group = "Toggle" },
            { "<leader>f", group = "Find (Telescope)" },
            { "<leader>l", group = "LazyGit" },
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}
