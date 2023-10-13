local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {

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
