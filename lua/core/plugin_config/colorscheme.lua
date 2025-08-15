require("tokyonight").setup({
  style = "night", -- options: "storm", "moon", "day"
  transparent = true, -- removes background
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  }
})

vim.o.termguicolors = true
vim.cmd.colorscheme("tokyonight")
