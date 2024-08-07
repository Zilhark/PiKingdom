-- Ensure packer.nvim is installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Initialize and configure plugins
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-sensible'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'nvim-lualine/lualine.nvim'
  use {"nvim-neo-tree/neo-tree.nvim", branch = "v3.x", requires = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons","MunifTanjim/nui.nvim"}}
  use 'nvim-tree/nvim-web-devicons'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'junegunn/goyo.vim'
  use 'preservim/nerdcommenter'
  use 'dense-analysis/ale'
  use 'rust-lang/rust.vim'
  use 'simrat39/rust-tools.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon' -- Harpoon for quick file navigation
  use 'mbbill/undotree'             -- UndoTree for visual undo history
  use 'tpope/vim-fugitive'          -- Vim-fugitive for Git integration
  use {'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end }
end)
