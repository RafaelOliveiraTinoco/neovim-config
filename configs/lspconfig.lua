local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {

    -- Download more LSP:
        -- 1. Use :Mason command press Ctrl + F and find the ID of the language you want
        -- 2. Go to the bottom of the page with upper "G" type the ID of the language and type enter
        -- 3. Press "2" to switch to the LSP tab, place your coursor above the LSP you want to download and press the "i" keys
        -- 4. To make the LSP usable place your coursor above the installed LSP and press enter, you will find the executable name
        -- 5. Open this url: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md press Ctrl + F and search for that executable name
        -- 6. Copy the text after "require'lspconfig'." and before ".setup{}" Example: require'lspconfig'.tsserver.setup{}

    -- Frontend development
        "html", -- html-lsp in Mason
        "tsserver", -- typescript-language-server in Mason
        "cssls", -- css-lsp in Mason

    -- Backend development
        "pyright", -- pyright in Mason
        "intelephense", --intelephense in Mason

}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
