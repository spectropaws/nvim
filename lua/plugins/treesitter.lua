return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
            "c", "cpp", "html", "css", "javascript", "typescript",
            "json", "php", "python", "regex", "rust", "tsx", "java",
            "lua", "vim", "vimdoc", "query", "bash", "markdown",
            "markdown_inline",
        })

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(ev)
                pcall(vim.treesitter.start, ev.buf)
                vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
