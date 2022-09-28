vim.o.relativenumber = true
vim.o.cursorline = true

vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.otabstop = 4
vim.o.expandtab = true
vim.o.scrolloff = 12

vim.g.nvim_tree_respect_buf_cwd = 1
--vim.api.nvim_exec([[
--  augroup fmt
  --  autocmd!
---- autocmd BufWritePre * undojoin | Neoformat
  --augroup END
--]], false)
