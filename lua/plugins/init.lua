return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }
    use 'windwp/nvim-ts-autotag'
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-autopairs'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}

    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use { 'norcalli/nvim-colorizer.lua' }
    use {'onsails/lspkind-nvim'}
    use {"folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    }
    use {'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
    }
    use {'terrortylor/nvim-comment'}
    use {"akinsho/toggleterm.nvim"}
    use {'HallerPatrick/py_lsp.nvim'}
    -- use {'tweekmonster/django-plus.vim'}
    use {'booperlv/nvim-gomove'}
    -- use {'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'}
    use {"lukas-reineke/indent-blankline.nvim"}
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'famiu/bufdelete.nvim'
    use 'danilamihailov/beacon.nvim'
    use {'williamboman/nvim-lsp-installer'}
    use({
      "gbprod/cutlass.nvim",
      config = function()
        require("cutlass").setup({
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        })
      end
    })


    --themes
    use {'dracula/vim', as = 'dracula'}
    use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    use "rebelot/kanagawa.nvim"
    use 'folke/tokyonight.nvim'
    use 'ful1e5/onedark.nvim'
    use 'katawful/kat.nvim'
    use({'rose-pine/neovim',
        as = 'rose-pine',
        tag = 'v1.*'
    })
    use 'shaunsingh/moonlight.nvim'
    use 'Mofiqul/adwaita.nvim'
end)
