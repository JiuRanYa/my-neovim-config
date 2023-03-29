vim.o.background = "dark"
-- 半透明
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
local colorscheme = "tokyonight"

-- require('onedark').load()
--
-- require('onedark').setup {
--   colors = {
--     blue = "#FFFF00",    -- define a new color
--     red = '#d47881',            -- redefine an existing color
--   },
--   highlights = {
--     ["@keyword"] = {fg = '#00FFFF'},
--     ["@keyword.function"] = {fg = '$blue', fmt = 'bold'},
--     ["@function"] = {fg = '#00FFFF', fmt = 'bold'},
--     -- ["@function.builtin"] = {fg = '#0059ff'}
--   }
-- }
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
  end,
  style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
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
