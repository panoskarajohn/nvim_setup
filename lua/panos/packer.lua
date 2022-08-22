
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'TimUntersberger/neogit'
  --Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use 'nvim-treesitter/playground'
  use 'romgrk/nvim-treesitter-context'
 
  use 'kyazdani42/nvim-web-devicons'
  -- status bar
  use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }
  use { 
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release
  }

  -- Collection of common configurations for the Nvim LSP client
  use 'neovim/nvim-lspconfig'
  
  -- Completion framework
  use 'hrsh7th/nvim-cmp'
  
  -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  
  -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'
  
  -- Other usefull completion sources
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  -- See hrsh7th's other plugins for more completion sources!
  
  -- To enable more of the features of rust-analyzer, such as inlay hints and more!
  use 'simrat39/rust-tools.nvim'

  -- Snippet engine
  use 'hrsh7th/vim-vsnip'

  -- Fuzzy finder
  -- Optional
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  
  --from Prime
  use { 'tzachar/cmp-tabnine',  run = './install.sh' }
  use 'onsails/lspkind-nvim'
  use 'nvim-lua/lsp_extensions.nvim'
  use 'simrat39/symbols-outline.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'

end)
