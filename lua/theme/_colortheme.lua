vim.o.background = "dark"
-- 半透明
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
local colorscheme = "tokyonight"

-- 启用真彩色
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- -- 定义新的高亮颜色方案
-- require('onedark').setup {
--   colors = {
--     blue = "#FFFF00",    -- define a new color
--     red = '#d47881',            -- redefine an existing color
--   },
--   highlights = {
--     -- ["@keyword"] = {fg = '#00FFFF'},
--     -- ["@keyword.function"] = {fg = '$blue', fmt = 'bold'},
--     -- ["@function"] = {fg = '#00FFFF', fmt = 'bold'},
--     -- ["@text.environment"] = {fg = '$black'},
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
    hl["@variable"] = {
      fg = '#9CA7F1',
      style = {}
    }
    hl["@keyword"] = {
      fg = "#6E7FF0",
      style = {
        italic = true
      }
    }
    hl["@keyword.function"] = {
      fg = "#9d7cd8",
      style = {}
    }
    hl["@label"] = {
      fg = "#08EAFF"
    }
    hl["@punctuation.bracket"] = {
      fg = "#E2DCA3"
    }
    hl.Type = {
      fg = "#9C79B6",
      style = {
        italic = true
      }
    }

    hl["@parameter"] = {
      fg = "#f55341"
    }

  --   hl["@property"] = {
  --   fg = "#F55341"
  -- }

    -- hl.String =  ["@variable.builtin"] = {
    --   fg = "#E2DCA3"
    -- }
  end,
  on_colors = function(colors)
    colors.bg = '#201335'
  end,
  transparent_sidebar = true,
  style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    -- comments = { italic = true },
    -- keywords = { italic = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", 
    floats = "transparent",
  }
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
  return
end
