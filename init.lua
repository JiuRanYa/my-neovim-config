require('core.packerPlugins')
require('core.vim-base')
require('core.keybindings')
--
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
require('configs._easy-motion')
require('configs._mason')
require('configs._no-config-plugin')

require('theme._colortheme')

require("bufferline").setup{}
