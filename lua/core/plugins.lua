local fn = vim.fn

-- Auto-install packer if not installed
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
  print("Installing packer... restart Neovim")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand to reload plugins file automatically
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Safe load of packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Plugin startup
return packer.startup(function(use)
  -- Packer itself
  use "wbthomason/packer.nvim"

  -- Lua utilities
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"

  -- Theme
  use "ellisonleao/gruvbox.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- File Explorer
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  -- ✅ Mason for LSP/DAP/Linters
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"

  -- Statusline
  use "nvim-lualine/lualine.nvim"
  use "andweeb/presence.nvim"

  -- Telescope (Fuzzy finder)
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

 -- 🧪 Jupyter / Notebook-like cells
use {
  "dccsillag/magma-nvim",
  run = ":UpdateRemotePlugins",
  config = function()
    vim.g.magma_automatically_open_output = false
    vim.g.magma_image_provider = "ueberzug"
  end
}


  -- Sync plugins after cloning packer
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
