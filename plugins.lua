local plugins = {

    -- In order to modify the `lspconfig` configuration:
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },

    -- Better Syntax Highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                -- defaults 
                    "vim",
                    "lua",

                -- Font enddevelopment 
                    "html",
                    "css",
                    "javascript",

                -- Backend development
                    "php",
                    "python",

                -- data files
                    "json",
            },
        },
    },

    -- Mason LSP
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server", -- lua
                "html-lsp", -- html
                "css-lsp", -- css
                "intelephense", -- php
                "pyright", -- python
                "typescript-language-server", -- javascript, typescript
            },
        },
    },
}

return plugins
