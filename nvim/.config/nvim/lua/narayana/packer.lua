vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- update this ones the change has been merged
    use 'wbthomason/packer.nvim'
    use 'notjl/mason-lspconfig.nvim'
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- colour schemes
    use('navarasu/onedark.nvim')
    use('olimorris/onedarkpro.nvim')
    use { "catppuccin/nvim", as = "catppuccin" }
    use('gruvbox-community/gruvbox')
    use('rebelot/kanagawa.nvim')
    use('folke/tokyonight.nvim')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    --use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('preservim/nerdcommenter')
    use('kyazdani42/nvim-web-devicons')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use({ 'jiangmiao/auto-pairs' })
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },

            -- rust analyzer
            { 'rust-lang/rust.vim' },

            -- prettier
            { 'MunifTanjim/prettier.nvim' }
        }
    }

    -- context
    use({ 'wellle/context.vim' })
end)
