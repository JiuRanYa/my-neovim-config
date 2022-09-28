return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  --use 'Mofiqul/vscode.nvim'
  use 'folke/tokyonight.nvim'
  --use { "ellisonleao/gruvbox.nvim" }
  --use 'bluz71/vim-moonfly-colors'

  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-nvim-lsp' 
  use 'prabirshrestha/vim-lsp'

  use 'hrsh7th/cmp-buffer' 
  use 'hrsh7th/cmp-path' 
  use 'hrsh7th/cmp-cmdline' 
  use "f3fora/cmp-spell"
  use 'neovim/nvim-lspconfig' 
  use({
    "glepnir/lspsaga.nvim",
    branch = "main"
  })

  -- 常见编程语言代码段
  use("rafamadriz/friendly-snippets")

  -- prettier format
  use 'sbdchd/neoformat'

  use "akinsho/toggleterm.nvim"

  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/vim-vsnip'
  -- lspkind
  use 'onsails/lspkind-nvim'

  -- status bar
  use'ryanoasis/vim-devicons'
  use'glepnir/spaceline.vim'

  -- indent line
  use "lukas-reineke/indent-blankline.nvim"
  --use "Yggdroot/indentLine"

  -- auto close tag html
  use'windwp/nvim-ts-autotag'


  -- dashboard
  use {'glepnir/dashboard-nvim'}

  -- lsp install tool
  use { "williamboman/mason.nvim" }

  -- auto pair
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  
  -- auto save
  use({
    "Pocco81/auto-save.nvim"
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

  use {
    'lewis6991/gitsigns.nvim',
  }

  -- javascript higlight
  use 'pangloss/vim-javascript'

  -- vim-vue
  use 'posva/vim-vue'

  -- use neovim as language serve by lua to inject lsp
  use 'jose-elias-alvarez/null-ls.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',

    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
