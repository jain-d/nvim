local opt = vim.opt

--Line Numbers
opt.number = true
opt.relativenumber = true
   
--Tabs and Indentation
opt.tabstop = 3
opt.shiftwidth = 3
opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

--Line Wrapping
opt.wrap = true
opt.linebreak = true

--Search Settings
opt.ignorecase = true
opt.smartcase = true

--Line Cursor
opt.cursorline = true

--Appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--Bidirectional copying
vim.api.nvim_set_option("clipboard", "unnamedplus");
