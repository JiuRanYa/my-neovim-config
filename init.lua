vim.o.relativenumber = true
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.o.cursorline = true

vim.o.shiftwidth = 2

require('packer-plugins')
require('keybindings')
require('_nvim-cmp')

require("nvim-tree").setup({
  view = {
    side = "left",
  }
})

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

-- lsp install tool
require("mason").setup()

--theme
vim.cmd[[colorscheme tokyonight]]

