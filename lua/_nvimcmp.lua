vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }

-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
-- https://github.com/hrsh7th/nvim-cmp
-- https://github.com/onsails/lspkind-nvim

--local lspkind = require("lspkind")
local cmp = require("cmp")

cmp.setup({
  -- 指定 snippet 引擎
  snippet = {
    expand = function(args)
      -- For `vsnip` users.
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  -- 来源
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "nvim_lsp_signature_help" },
    -- For vsnip users.
    { name = "vsnip" },
    { name = "buffer" },
    { name = "spell" },
  }, { { name = "path" } }),

  -- 快捷键
  mapping = require("keybindings").cmp(cmp),
  -- 使用lspkind-nvim显示类型图标
  formatting = require("_ui").formatting,
})

-- Use buffer source for `/`.
cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" },
  },
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})
