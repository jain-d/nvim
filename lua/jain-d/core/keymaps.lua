vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap 

--General keymaps
keymap.set("i", "jk", "<ESC>")

-- Window Pane navigation
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-h>", "<C-w>h")

-- Window Pane resizing
keymap.set("n", "<C-Up>", ":resize +2<CR>")
keymap.set("n", "<C-Down>", ":resize -2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize +2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize -2<CR>")

-- Persist Indentation
keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")

-- Move text Up and Down
keymap.set("v", "<A-j>", ":m .+1<CR>==")
keymap.set("v", "<A-k>", ":m .-1<CR>==")
