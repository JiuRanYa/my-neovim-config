require('core.packerPlugins')
require('core.vim-base')
require('core.keybindings')

require('configs._telescope')
require('configs._auto-save')
require('configs._gitsigns')
require('configs._dashboard')
require('configs._indent-line')
require('configs._tree-sitter')
require('configs._toggleterm')
require('configs._nvim-cmp')
require('configs._nvim-tree')
require('configs._lsp-config')
require('configs._lspsage')
require('configs._nvim-surround')
require('configs._comment')

require('theme._colortheme')

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.stylua,
  },
})
-- lsp install tool
require("mason").setup()
require("bufferline").setup{}
