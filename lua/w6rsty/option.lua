-- theme
vim.o.background = ""
vim.cmd [[colorscheme onedark]]

vim.opt.relativenumber = false
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.incsearch = false
vim.opt.hlsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.cmd [[highlight ColorColumn ctermbg=0 guibg=grey]]
