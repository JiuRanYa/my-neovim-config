vim.o.relativenumber = true
vim.o.cursorline = true

vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.otabstop = 4
vim.o.expandtab = true
vim.o.scrolloff = 12

vim.g.nvim_tree_respect_buf_cwd = 1

local autocmd = vim.api.nvim_create_autocmd

local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
  clear = true,
})
-- 自动切换输入法，需要安装 im-select
-- https://github.com/daipeihust/im-select
autocmd("InsertLeave", {
  group = myAutoGroup,
  callback = require("core.utils.im-select").macInsertLeave,
})
autocmd("InsertEnter", {
  group = myAutoGroup,
  callback = require("core.utils.im-select").macInsertEnter,
})

vim.g.vsnip_filetypes = {
  typescript = { "javascript" },
}
