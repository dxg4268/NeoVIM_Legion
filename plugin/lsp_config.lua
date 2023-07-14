---- LSP Configuration with Mason Package Manager


-- Meson
require("mason").setup()

-- Mason_LSP
require("mason-lspconfig").setup(
{
    ensure_installed = { "lua_ls", "pyright" }
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- LSP
require'lspconfig'.lua_ls.setup{
    on_attach = on_attach,
    capabilities = capabilities
}

require'lspconfig'.pyright.setup{
    on_attach = on_attach,
    capabilities = capabilities
}


-- Disable LSP Syntax Highlighting
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
        vim.api.nvim_set_hl(0, group, {})
end
