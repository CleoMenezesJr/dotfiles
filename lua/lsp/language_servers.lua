-- -- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require'lspconfig'.html.setup {
--     cmd = {"vscode-html-language-server", "--stdio"},
--     filetypes = { "html", "htmldjango" },
--     on_attach = on_attach,
--     capabilities = capabilities
-- }
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.jedi_language_server.setup{
--     cmd = { "jedi-language-server" },
--     filetypes = { "python" },
--     single_file_support = true
-- }
-- require'lspconfig'.jsonls.setup {
--   capabilities = capabilities,
-- }

-- require'lspconfig'.tailwindcss.setup{}
-- require'lspconfig'.cssmodules_ls.setup{}
-- require'lspconfig'.cssls.setup {
--   capabilities = capabilities,
-- }
-- require'lspconfig'.dockerls.setup{}
-- require'lspconfig'.emmet_ls.setup{
--         capabilities = capabilities,
-- }
-- -- require'lspconfig'.pylsp.setup{
-- --     capabilities = capabilities,
-- --     settings = {
-- --         pylsp = {
-- --             plugins = {
-- --                 jedi_completion = {
-- --                     include_params = true,
-- --                 },
-- --             },
-- --         },
-- --     },
-- -- }
-- require'lspconfig'.bashls.setup{}




local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    local opts = {capabilities = capabilities}

    if server.name == "sumneko_lua" then
        opts = vim.tbl_deep_extend("force", {
            settings = {
                Lua = {
                      runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
                      diagnostics = {globals = {'vim'}},
                      workspace = {library = vim.api.nvim_get_runtime_file("", true)},
                      telemetry = {enable = false}
                },
            }
        }, opts)
    end
    server:setup(opts)
end)
