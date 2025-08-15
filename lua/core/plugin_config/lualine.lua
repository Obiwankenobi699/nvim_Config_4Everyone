require("lualine").setup {
  options = {
    theme = "tokyonight",
    icons_enabled = true
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = { { "filename", path = 1 } },
    lualine_x = {
      function()
        return "📄 " .. vim.api.nvim_buf_line_count(0) .. " lines"
      end,
      "encoding", "fileformat", "filetype"
    },
    lualine_y = { "progress" },
    lualine_z = { "location" }
  }
}
