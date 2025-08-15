<<<<<<< HEAD
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
=======
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    }
  }
}

>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9
