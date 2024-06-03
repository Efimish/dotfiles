return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls", --Lua
                    "rust_analyzer", --Rust
                    "taplo", -- TOML
                    "quick_lint_js", --JS
                    "jsonls", --JSON
                    "pyright", --Python
                    "svelte"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local l = require("lspconfig")
            l.lua_ls.setup {}
            l.rust_analyzer.setup {}
            l.taplo.setup {}
            l.quick_lint_js.setup {}
            l.jsonls.setup {}
            l.pyright.setup {}
            l.svelte.setup {}
        end,
        keys = {
            { "<leader>rn", function() vim.lsp.buf.rename {} end },
            { "<leader>ca", function() vim.lsp.buf.code_action {} end },

            { "gd", function() vim.lsp.buf.definition {} end },
            { "gi", function() vim.lsp.buf.implementation {} end },
            { "K", function() vim.lsp.buf.hover {} end }
        }
    }
}
