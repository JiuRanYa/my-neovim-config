local status, nvimTree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 null-ls")
  return
end

nvimTree.setup({
  view = {
    side = "left",
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
})
