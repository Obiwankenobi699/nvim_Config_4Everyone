-- Disable netrw (built-in file explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Setup nvim-tree
require("nvim-tree").setup()

-- Keymap to toggle the file explorer with Ctrl+n
vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>')
