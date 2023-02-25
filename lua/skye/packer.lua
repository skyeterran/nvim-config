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
end)
