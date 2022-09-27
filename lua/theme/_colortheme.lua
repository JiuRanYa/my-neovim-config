vim.o.background = "dark"
-- 半透明
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
local colorscheme = "tokyonight"

require('tokyonight').setup({
  on_highlights = function(hl, c)
    hl.IndentBlanklineContextChar = {
      fg = c.dark5,
    }
    hl.TSConstructor = {
      fg = c.blue1,
    }
    hl.TSTagDelimiter = {
      fg = c.dark5,
    }
    -- local prompt = "#2d3149"
    -- hl.TelescopeNormal = {
    --   bg = c.bg_dark,
    --   fg = c.fg_dark,
    -- }
    -- hl.TelescopeBorder = {
    --   bg = c.bg_dark,
    --   fg = c.bg_dark,
    -- }
    -- hl.TelescopePromptNormal = {
    --   bg = prompt,
    -- }
    -- hl.TelescopePromptBorder = {
    --   bg = prompt,
    --   fg = prompt,
    -- }
    -- hl.TelescopePromptTitle = {
    --   bg = prompt,
    --   fg = prompt,
    -- }
    -- hl.TelescopePreviewTitle = {
    --   bg = c.bg_dark,
    --   fg = c.bg_dark,
    -- }
    -- hl.TelescopeResultsTitle = {
    --   bg = c.bg_dark,
    --   fg = c.bg_dark,
    -- }
  end,
  style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  }
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
  return
end
