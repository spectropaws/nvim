return {
    {
        "saghen/blink.cmp",
        version = "*",
        dependencies = {
            "rafamadriz/friendly-snippets",
            "Exafunction/windsurf.nvim",
            "giuxtaposition/blink-cmp-copilot",
        },
        opts = {
            keymap = {
                preset = "super-tab",
                ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                ["<C-f>"] = { "scroll_documentation_down", "fallback" },
            },

            appearance = {
                nerd_font_variant = "mono",
            },

            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 200,
                },
                menu = {
                    border = "rounded",
                    draw = {
                        treesitter = { "lsp" },
                    },
                },
                ghost_text = { enabled = false },
            },

            signature = { enabled = true },

            snippets = { preset = "default" },

            sources = {
                default = { "lsp", "path", "snippets", "buffer", "copilot", "codeium" },
                providers = {
                    copilot = {
                        name = "copilot",
                        module = "blink-cmp-copilot",
                        async = true,
                        score_offset = 100,
                    },
                    codeium = {
                        name = "Codeium",
                        module = "codeium.blink",
                        async = true,
                        score_offset = 100,
                    },
                },
            },

            fuzzy = { implementation = "prefer_rust_with_warning" },
        },
        opts_extend = { "sources.default" },
    },
}
