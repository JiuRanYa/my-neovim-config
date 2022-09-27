function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local actions = require('telescope.actions')

-- leader 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<C-b>", ":NvimTreeToggle<cr>", opts)
map("n", ";", ":noh<cr>", opts)

-- 窗口左右跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- buffer line 切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- telescope
map("n", "<leader>ff", ":Telescope find_files<cr>", opts)
map("n", "<leader>fw", ":Telescope live_grep<CR>", opt)

map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")
map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
map("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>")

local pluginKeys = {}

--cmp
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
  }
end

pluginKeys.telescope = function(tel)
  return {
    i = {
      ["<C-j"] = actions.move_selection_next,
      ["<C-k"] = actions.move_selection_previous
    },
  }
end

return pluginKeys


