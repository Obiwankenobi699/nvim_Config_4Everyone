<<<<<<< HEAD
-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Number
vim.opt.number = true
vim.opt.relativenumber = true


-- Start with mouse disabled
vim.opt.mouse = ""
local mouse_enabled = false

-- Keybinding helper
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Toggle mouse
map("n", "<leader>m", function()
  if mouse_enabled then
    vim.opt.mouse = ""
    mouse_enabled = false
    print("🖱️ Mouse disabled")
  else
    vim.opt.mouse = "a"
    mouse_enabled = true
    print("🖱️ Mouse enabled")
  end
end, opts)

-- Quick save & quit
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>Q", ":q!<CR>", opts)

-- Window splits
map("n", "<leader>sv", ":vsplit<CR>", opts)
map("n", "<leader>sh", ":split<CR>", opts)
map("n", "<leader>se", "<C-w>=", opts)   -- Equalize split sizes
map("n", "<leader>sx", ":close<CR>", opts)

-- Buffer navigation
map("n", "<leader>bn", ":bnext<CR>", opts)
map("n", "<leader>bp", ":bprevious<CR>", opts)
map("n", "<leader>bd", ":bdelete<CR>", opts)

-- Clear search
map("n", "<leader>h", ":nohlsearch<CR>", opts)

-- File explorer toggle (if using nvim-tree)
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope shortcuts
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
=======
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9
