-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
    capabilities = capabilities
}
require'lspconfig'.tsserver.setup{
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    init_options = {
      hostInfo = "neovim"
    },
}
require'lspconfig'.jedi_language_server.setup{
    cmd = { "jedi-language-server" },
    filetypes = { "python", "html"},
    single_file_support = true
}
require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
}
require'lspconfig'.csharp_ls.setup{}

require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.cssmodules_ls.setup{}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.emmet_ls.setup{}
require'lspconfig'.pylsp.setup{}
require'lspconfig'.pyright.setup{}
