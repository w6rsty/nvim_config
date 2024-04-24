vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                      
	  requires = {
          {'nvim-lua/plenary.nvim'},
          {'nvim-telescope/telescope-live-grep-args.nvim' },
      },
      config = function()
          require("telescope").load_extension("live_grep_args")
      end
  }

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = { 'nvim-tree/nvim-web-devicons' },
  }

  use { "ellisonleao/gruvbox.nvim" }

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('p00f/nvim-ts-rainbow')
  use ('theprimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
  use ('windwp/nvim-autopairs')
  use ('lewis6991/gitsigns.nvim')
  use ('github/copilot.vim')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  {"williamboman/mason.nvim"},
		  {"williamboman/mason-lspconfig.nvim"},
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use {"akinsho/toggleterm.nvim", tag = '*'}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
