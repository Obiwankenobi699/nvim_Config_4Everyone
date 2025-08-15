require("tokyonight").setup({
  style = "night", -- or "storm", "moon", "day"
  transparent = true, -- removes background
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  }
})

vim.cmd[[colorscheme tokyonight]]
