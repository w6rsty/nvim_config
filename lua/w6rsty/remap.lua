vim.g.mapleader = " "

-- move line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append next line to the end of current line
vim.keymap.set("n", "J", "mzJ`z")
-- page down and set cusor at the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- page up and set cusor at the middle of the screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move to next search result and set cursor at the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
-- move to previous search result and set cursor at the middle of the screen
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")
-- normal mode copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
-- visual mode copy to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
-- normal mode cut to system clipboard
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- split window
vim.keymap.set("n", "<leader>sv", "<C-w>v")  
vim.keymap.set("n", "<leader>sh", "<C-w>s")

-- cancel search highlight
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
