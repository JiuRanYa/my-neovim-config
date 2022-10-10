vim.opt.spell = false
vim.opt.spelllang = { 'en_us' }

-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
-- https://github.com/hrsh7th/nvim-cmp
-- https://github.com/onsails/lspkind-nvim

local lspkind = require("lspkind")
local cmp = require("cmp")

cmp.setup({
  -- 指定 snippet 引擎
  snippet = {
    expand = function(args)
      -- For `vsnip` users.
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',
      before = function (entry, vim_item)
        return vim_item
      end
    })
  },
  -- 来源
  sources = {
    { name = "nvim_lsp" },
    -- For vsnip users.
    { name = "vsnip" },
    { name = "buffer" },
    { name = "spell" },
    { name = "path" },
  },

  -- 快捷键
  mapping = require("core.keybindings").cmp(cmp),
})

-- Use buffer source for `/`.
cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" },
  },
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(":", {
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})
