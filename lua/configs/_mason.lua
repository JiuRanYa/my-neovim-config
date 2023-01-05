local status, mason = pcall(require, "mason")
if not status then
  vim.notify("没有找到 mason")
  return
end

mason.setup()
