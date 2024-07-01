return {
    "nvimtools/none-ls.nvim",
    config = function()
        local none_ls = require("null-ls")
        none_ls.setup({
            sources = {
                none_ls.builtins.formatting.stylua,
                none_ls.builtins.formatting.prettier,
                none_ls.builtins.formatting.black,
                none_ls.builtins.formatting.isort,
                none_ls.builtins.diagnostics.eslint_d,
            }
        })

        vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, {})
    end
}
