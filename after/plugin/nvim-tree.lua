-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()


-- OR setup with some options
require("nvim-tree").setup({
  view = {
    width = 25,
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
