vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }
    use 'alaviss/nim.nvim'
    use 'Olical/aniseed'
    use 'Olical/conjure'
    use 'wlangstroth/vim-racket'
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
      "folke/zen-mode.nvim",
    }
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
    }
    use 'ellisonleao/glow.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'mrjones2014/nvim-ts-rainbow'
    use {
        'TimUntersberger/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }
    use {"ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    }
end)
