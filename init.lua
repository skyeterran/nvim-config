-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- split windows to the right
vim.opt.splitright = true
vim.opt.splitbelow = true

require("skye.skyespace")
require("skye.packer")

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- load up color palette
require("rose-pine").setup({
    vim.cmd('colorscheme rose-pine')
})

-- set up icons
require'nvim-web-devicons'.setup({
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 color_icons = true;
 default = true;
 strict = true;
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
})

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  view = {
    width = 40,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
    float = {
        enable = false,
    },
  },
  renderer = {
    group_empty = true,
    icons = {
        show = {
            file = true,
        },
	    glyphs = {
            folder = {
                arrow_closed = "-",
                arrow_open = "↪️",
            	default = "📁",
                open = "📂",
                empty = "🫧",
            }
    	},
    },
  },
  filters = {
    dotfiles = true,
  },
})
