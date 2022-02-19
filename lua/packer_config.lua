vim.cmd [[packadd packer.nvim]] -- Add packer manually because of `opt = true`

require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim', opt = true }
	use "Pocco81/AutoSave.nvim"						-- Automatically save files
	use 'nvim-lualine/lualine.nvim'				-- Custom status line
	use 'lewis6991/gitsigns.nvim'					-- Git blame and other git functionallity
	use	'hrsh7th/cmp-nvim-lua'						-- Complition for neovim lua api
	use 'romgrk/barbar.nvim'							-- Tab bar plugin
  use 'alec-gibson/nvim-tetris'         -- Just a tetris in vim
  use 'akinsho/toggleterm.nvim'         -- Advanced Terminal integration

	use 'neovim/nvim-lspconfig'						-- Some additional tools for embedded lsp
	use 'j-hui/fidget.nvim'       				-- LSP status in status bar

	-- use 'Mofiqul/vscode.nvim'							-- VS Code like theme
	use 'projekt0n/github-nvim-theme'     -- GitHub (VS Code) like theme
	use 'f-person/auto-dark-mode.nvim'    -- Light/Dark themes switcher
  use 'folke/tokyonight.nvim'           -- Light/Dark Tokyo theme
  -- use 'dart-lang/dart-vim-plugin'       -- Dart lang highlight TODO: delete in the future
  use 'ray-x/lsp_signature.nvim'        -- Shows function signature on type

	use 'nvim-treesitter/nvim-treesitter' -- Additional language highlighting

  use 'nvim-lua/plenary.nvim'						-- Lua helper functions
	use 'akinsho/flutter-tools.nvim'			-- Commands for flutter development
	use 'nvim-telescope/telescope.nvim'		-- Spootlight

	use 'goolord/alpha-nvim'							-- Greeting screen
  use 'rmagatti/goto-preview'           -- Nice references and go to preview
	use 'folke/trouble.nvim'              -- Nice references and go to preview v2

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/nvim-cmp'								-- Code complition

	use 'L3MON4D3/LuaSnip'								-- Snippets engine

  use 'windwp/nvim-autopairs'						-- Automatically close brackets and quotes
  use 'p00f/nvim-ts-rainbow'            -- Rainbow brackets

  use 'kyazdani42/nvim-web-devicons'		-- for file icons
  use 'kyazdani42/nvim-tree.lua'				-- File explorer
end)
