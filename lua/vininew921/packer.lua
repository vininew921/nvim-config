-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('nvim-tree/nvim-web-devicons')
    use('lewis6991/gitsigns.nvim')
    use('romgrk/barbar.nvim')
    use('preservim/nerdtree')
    use('akinsho/toggleterm.nvim')
    use('nvim-lua/lsp-status.nvim')
    use('windwp/nvim-ts-autotag')
    use('m4xshen/autoclose.nvim')
    use('ray-x/lsp_signature.nvim')

    --Themes
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'folke/tokyonight.nvim', as = 'tokyonight' })
    use({ 'bluz71/vim-moonfly-colors', as = 'moonfly' })
    use({ 'shatur/neovim-ayu', as = 'ayu' })

    use { 'j-hui/fidget.nvim',tag = 'legacy' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.api.nvim_command, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
end)
