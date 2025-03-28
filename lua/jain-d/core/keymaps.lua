local opt = { noremap = true }

local keymap = vim.keymap

-- Leader Keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--General keymaps
--keymap.set("i", "jk", "<ESC>", opt)

-- Window Pane navigation
keymap.set("n", "<C-k>", "<C-w>k", opt)
keymap.set("n", "<C-l>", "<C-w>l", opt)
keymap.set("n", "<C-j>", "<C-w>j", opt)
keymap.set("n", "<C-h>", "<C-w>h", opt)

-- Window Pane resizing
keymap.set("n", "<C-Up>", ":resize +2<CR>", opt)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opt)
keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opt)
keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opt)

-- Persist Indentation
keymap.set("v", ">", ">gv", opt)
keymap.set("v", "<", "<gv", opt)

-- Move text Up and Down
keymap.set("v", "<A-j>", ":m .+1<CR>==", opt)
keymap.set("v", "<A-k>", ":m .-1<CR>==", opt)

-- Return to File Explorer Lex
keymap.set("n", "<C-b>", ":17Lex<CR>", opt)

-- BETTER TERMINAL; Suspends NeoVim and back to Terminal
keymap.set("n", "<leader>`", ":stop<CR>", opt)

-- Clear highlights on search when pressing <Esc> in normal mode
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
