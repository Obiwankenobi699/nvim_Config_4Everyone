<<<<<<< HEAD
require("tokyonight").setup({
  style = "night", -- or "storm", "moon", "day"
  transparent = true, -- removes background
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  }
})

vim.cmd[[colorscheme tokyonight]]
=======
vim.o.termguicolors = true
vim.cmd [[colorscheme gruvbox]]
>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9
