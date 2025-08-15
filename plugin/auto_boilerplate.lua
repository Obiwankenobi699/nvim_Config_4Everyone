-- Simple boilerplate system
local M = {}

local templates = {
  python = {
    "#!/usr/bin/env python3\n\nif __name__ == '__main__':\n    print('Hello World')"
  },
  java = {
    "public class Main {\n    public static void main(String[] args) {\n        System.out.println(\"Hello World\");\n    }\n}"
  },
  javascript = {
    "console.log('Hello World');"
  }
}

function M.insert_boilerplate()
  local ft = vim.bo.filetype
  if templates[ft] then
    vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(templates[ft][1], "\n"))
  else
    print("No boilerplate for filetype: " .. ft)
  end
end

vim.api.nvim_create_user_command('Boilerplate', M.insert_boilerplate, {})

return M
