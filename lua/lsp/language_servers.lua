-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
    cmd = {"vscode-html-language-server", "--stdio"},
    filetypes = { "html", "htmldjango" },
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.tsserver.setup{
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    init_options = {
      hostInfo = "neovim"
    },
}
-- require'lspconfig'.jedi_language_server.setup{
--     cmd = { "jedi-language-server" },
--     filetypes = { "python" },
--     single_file_support = true
-- }
require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
}

require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.cssmodules_ls.setup{}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.emmet_ls.setup{}
require'lspconfig'.pylsp.setup{
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                jedi_completion = {
                    include_params = true,
                },
            },
        },
    },
}
require'toggle_lsp_diagnostics'.init({ starton = true, underline = true, virtual_text = { prefix = "gostosa", spacing = 10 }})
-- require'lspconfig'.pyright.setup{}

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
})
