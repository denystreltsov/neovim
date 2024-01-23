vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
    use({ 'rose-pine/neovim', as = 'rose-pine' ,
    config = function() 
	    		vim.cmd('colorscheme rose-pine')
		end
    })


    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


    use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

use {"folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 }
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'romgrk/barbar.nvim'

-- install without yarn or npm
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  end)

