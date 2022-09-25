local status, indent_blankline = pcall(require, 'indent_blankline')
if (not status)
  then
    vim.notify('Not find indent_blankline')
  end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
  vim.notify("没有找到 indent_blankline")
  return
end

indent_blankline.setup({
  -- 空行占位

  show_current_context = true,
  show_current_context_start = true,

  -- echo &filetype
  filetype_exclude = {
    "dashboard"
  },
  context_patterns = {
    "class",
    "function",
    "method",
    "element",
    "^if",
    "^while",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
  },
  -- 竖线样式
  -- char = '¦'
  --char = '┆'
  -- char = '│'
  -- char = "⎸",
  char = "▏",
})
