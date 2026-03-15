return {
    "Exafunction/windsurf.nvim",
    enabled = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    event = "InsertEnter",
    config = function()
        require("codeium").setup({
            enable_cmp_source = false,
            virtual_text = {
                enabled = false,
            },
        })
    end,
}
