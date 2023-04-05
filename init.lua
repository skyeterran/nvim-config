-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- split windows to the right
vim.opt.splitright = true
vim.opt.splitbelow = true

require("skye.skyespace")
require("skye.packer")

-- start common Lisp server as needed
--vim.api.nvim_create_autocmd(
--    "FileType",
--    { pattern = { "lisp" },
--    command = [[ros run --eval '(ql:quickload :swank)'  --eval '(swank:create-server :dont-close t)']] }
--)

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
        git_placement = "after",
        show = {
            file = true,
            git = true,
        },
	    glyphs = {
            folder = {
                arrow_closed = "-",
                arrow_open = "↪️",
            	default = "[ ]",
                open = "[/]",
                empty = "[E]",
            }
    	},
    },
  },
  filters = {
    dotfiles = true,
  },
})

require("glow").setup()

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "rust" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
  },
}

-- enable use of treesitter in conjure
vim.g['conjure#extract#tree_sitter#enabled'] = true
