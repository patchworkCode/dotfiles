if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
    Plug 'tpope/vim-fugitive'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    "Telescope 
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    "tree-sitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    "snippets
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'neovim/nvim-lspconfig'
    Plug 'tami5/lspsaga.nvim'

    Plug 'L3MON4D3/LuaSnip'
    Plug 'nvim-lua/popup.nvim'
    "lsp icons
    Plug 'onsails/lspkind-nvim'

    " colorschemes
    Plug 'rose-pine/neovim'


    "vim-closetag
    Plug 'windwp/nvim-ts-autotag'
    Plug 'windwp/nvim-autopairs'

    "tabs
    Plug 'akinsho/bufferline.nvim'
call plug#end()
