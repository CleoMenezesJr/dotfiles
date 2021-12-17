return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {'dracula/vim', as = 'dracula'}
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
    }
    use 'windwp/nvim-ts-autotag'
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-autopairs'
    use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
end)

