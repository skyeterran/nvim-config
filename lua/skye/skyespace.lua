vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.g.mapleader = ","
vim.g.maplocalleader = ";"

-- Fuck autofolding
vim.opt.foldenable = false

-- Remapping keys
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('', '<C-Space>', ':NvimTreeToggle<CR>') -- Toggles tree view
map('', '<up>', '<C-w>k') -- Move to up pane
map('', '<down>', '<C-w>j') -- Move to down pane
map('', '<left>', '<C-w>h') -- Move to left pane
map('', '<right>', '<C-w>l') -- Move to right pane
map('', '<C-z>', ':ZenMode<CR>') -- CTRL+z for Zen Mode
map('t', '<Esc>', '<C-\\><C-n>') -- Make it so ESC gets out of terminal insert mode
map('', '<C-d>', '<C-d>zz') -- Focus on vertical center on downward jump
map('', '<C-u>', '<C-u>zz') -- Focus on vertical center on upward jump
map('', 'n', 'nzzv') -- Focus on vertical center on next jump
map('', 'N', 'Nzzv') -- Focus on vertical center on prev jump
map('', '_', 'I//<Esc>h') -- Comment out a line w/ underscore
map('', '+', '^vl:s/\\/\\/<CR>') -- Uncomment out a line w/ plus

-- telescope keymapping
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
