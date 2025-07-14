-- for a minimal neovim setup

vim.g.mapleader = " "

vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.cmd [[colorscheme slate]]

vim.keymap.set('i', 'jk', '<Esc>', {buffer = true})
vim.keymap.set('n', '<leader>`', '<cmd>:suspend<cr>', {buffer = true})

vim.api.nvim_set_option("clipboard", "unnamedplus");

-- netrw styling
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
