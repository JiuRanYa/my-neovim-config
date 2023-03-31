local keymap = vim.keymap.set

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

-- 设置jj退出insert
map('i', 'jj', '<Esc>', {noremap = true})

map("n", "<C-b>", ":NvimTreeToggle<cr>", opts)
map("n", ";", ":noh<cr>", opts)

-- 窗口左右跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- buffer line 切换
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opt)

map("n", "<leader>w", "<Plug>(easymotion-overwin-w)")

-- telescope
map("n", "<leader>ff", ":Telescope find_files<cr>", opts)
map("n", "<leader>fw", ":Telescope live_grep<CR>", opt)

-- format
map("n", "<C-s>", ":Neoformat<CR>", opt)

-- term
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")
map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
map("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>")

-- insert mode move cursor
map("i", "<C-l>", "<RIGHT>")
map("i", "<C-h>", "<LEFT>")

keymap("n", "fd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Code action
keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })

-- close tab for buffer line
keymap({"n","v"}, "<leader>cb", ":bdelet<CR>")

-- Rename
keymap("n", "rn", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Peek Definition
-- you can edit the definition file in this floatwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Show line diagnostics
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
-- Show cursor diagnostic
--keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "<leader>p", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "<leader>n", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Comment
keymap("n", "<leader>/", function() require("Comment.api").toggle.linewise.current() end)

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- Outline
keymap("n","<leader>o", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Float terminal
keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
-- if you want pass somc cli command into terminal you can do like this
-- open lazygit in lspsaga float terminal
keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })

-- leader + rs 刷新配置
keymap('n', '<leader>rs', ':luafile ~/.config/nvim/init.lua<CR>', {noremap = true})
-- close floaterm
keymap("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })


local pluginKeys = {}

-- cmp
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



