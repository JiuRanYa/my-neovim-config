local status, nvimTree = pcall(require, "nvim-tree")

if not status then
  vim.notify("没有找到 nvimTree")
  return
end

nvimTree.setup({
  view = {
    side = "left",
  },
  -- project.nvim need this
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
})
