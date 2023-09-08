-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --colorschemes
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({'bluz71/vim-nightfly-colors', as = 'nightfly'})
    use({'pineapplegiant/spaceduck'})

    use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

    --statusline/tabline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    --  use('nvim-treesitter/playground') --Plugin to have access to treesitter data

    use('theprimeagen/harpoon')

    use('theprimeagen/vim-be-good')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }

}

    use({ 'mhartington/formatter.nvim' })
    use 'mfussenegger/nvim-dap' -- DEBUG ADAPTER PROTOCOL
    use 'mfussenegger/nvim-lint'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
