-- volar for vue3 check
--require'lspconfig'.volar.setup{
--  filetypes = {'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
--}
--
--
local lspconfig = require('lspconfig')

lspconfig.volar.setup({
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
  init_options = {
    typescript = { tsdk = '/usr/local/lib/node_modules/typescript/lib' },
  },
})

require'lspconfig'.tailwindcss.setup{}
