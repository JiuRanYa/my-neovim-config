local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  vim.notify("没有找到 nvim-treesitter")
  return
end

treesitter.setup({
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = { "javascript", "html", "json", "vue", "vim", "typescript", "scss" },
  -- ensure_installed = "maintained",

  -- 启用代码高亮模块
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  -- 启用代码缩进模块 (=)
  indent = {
    enable = true,
  },
  -- p00f/nvim-ts-rainbow
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
      "#95ca60",
      "#ee6985",
      "#D6A760",
      "#7794f4",
      "#b38bf5",
      "#7cc7fe",
    }, -- table of hex strings
    -- termcolors = { } -- table of colour name strings
  },
})
