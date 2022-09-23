return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  --use 'Mofiqul/vscode.nvim'
  use 'folke/tokyonight.nvim'

  -- code suggestion
  --use {'neoclide/coc.nvim', branch = 'release'}

  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('neovim/nvim-lspconfig')
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'

  -- status bar
  use'ryanoasis/vim-devicons'
  use'glepnir/spaceline.vim'

  -- vue higlight
  use'posva/vim-vue'

  -- indent line
  --use "lukas-reineke/indent-blankline.nvim"
  use "Yggdroot/indentLine"

  -- auto close tag html
  use'windwp/nvim-ts-autotag'

  -- lsp install tool
  use { "williamboman/mason.nvim" }

  -- auto pair
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  
  -- auto save
  use({
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
      }
    end,
  })

  -- buffer line
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- file tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- javascript higlight
  use 'pangloss/vim-javascript'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {'nvim-telescope/telescope-ui-select.nvim' }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',

    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
