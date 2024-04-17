-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'folke/trouble.nvim',
        requires = { { 'nvim-tree/nvim-web-devicons' } }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }


    use('nvim-treesitter/playground', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')
    use('romgrk/barbar.nvim')
    use('akinsho/toggleterm.nvim')
    use('nvim-lua/lsp-status.nvim')
    use('windwp/nvim-ts-autotag')
    use('m4xshen/autoclose.nvim')
    use('ray-x/lsp_signature.nvim')
    use('laytan/cloak.nvim')
    use('folke/zen-mode.nvim')


    --Themes
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'folke/tokyonight.nvim', as = 'tokyonight' })
    use({ 'bluz71/vim-moonfly-colors', as = 'moonfly' })
    use({ 'shatur/neovim-ayu', as = 'ayu' })
    use { 'j-hui/fidget.nvim', tag = 'legacy' }


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    local function tabnine_build_path()
        if vim.loop.os_uname().sysname == "Windows_NT" then
            return "powershell.exe -file .\\dl_binaries.ps1"
        else
            return "./dl_binaries.sh"
        end
    end

    use { 'codota/tabnine-nvim', run = tabnine_build_path() }
end)
