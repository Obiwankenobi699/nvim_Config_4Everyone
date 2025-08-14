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

