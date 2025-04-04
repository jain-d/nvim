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
opt.showmode = false     -- Since lualine already provides that info

--Bidirectional copying
vim.api.nvim_set_option("clipboard", "unnamedplus");

-- netrw styling
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
