local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    {
        "numToStr/FTerm.nvim"
    },
    {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    },
    {
        'neoclide/coc.nvim',
        branch = 'release'
    },
    'alaviss/nim.nvim',
    'Olical/aniseed',
    'Olical/conjure',
    'wlangstroth/vim-racket',
    {
      'nvim-tree/nvim-tree.lua',
      dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      }
    },
    {
      "folke/zen-mode.nvim",
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    'ellisonleao/glow.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    'mrjones2014/nvim-ts-rainbow',
    {
        'TimUntersberger/neogit',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    {
        "ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        opts = {
            workspaces = {
                {
                    name = "Notes",
                    path = "~/Obsidian/Notes"
                }
            }
        }
    }
})
