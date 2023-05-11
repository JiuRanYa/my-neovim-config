local lspconfig = require('lspconfig')

lspconfig.volar.setup({
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
  init_options = {
  },
})

require'lspconfig'.tailwindcss.setup{
}
