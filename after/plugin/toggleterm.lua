local status_ok, toggleterm = pcall(require, 'toggleterm')

if not status_ok then
    vim.notify("toggleterm plugin is not exists")
    return
end

toggleterm.setup{
    hide_numbers = true,
    start_in_insert = true,
    float_opts = {
        border = 'curved',
        winblend = 3,
   },
}

vim.keymap.set('n', '<leader>t', '<Cmd>ToggleTerm direction=float<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>th', '<Cmd>ToggleTerm direction=horizontal<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>tv', '<Cmd>ToggleTerm direction=vertical<CR>', {noremap = true, silent = true})

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
