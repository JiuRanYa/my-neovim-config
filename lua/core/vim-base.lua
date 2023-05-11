vim.o.relativenumber = true
vim.o.cursorline = true

vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.otabstop = 4
vim.o.expandtab = true
vim.o.scrolloff = 12

-- 代码折叠
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

--禁止自动补全
-- vim.o.wildmode = "list:longest,list:full"
-- vim.o.completeopt = "menu,menuone,noinsert,noselect"

vim.g.nvim_tree_respect_buf_cwd = 1

-- for nivm-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local autocmd = vim.api.nvim_create_autocmd

vim.g.vsnip_filetypes = {
  typescript = { "javascript" },
}
