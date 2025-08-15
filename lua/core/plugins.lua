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

<<<<<<< HEAD
   -- Theme
   use "folke/tokyonight.nvim"


=======
  -- Theme
  use "ellisonleao/gruvbox.nvim"
>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

<<<<<<< HEAD
  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup()
  end
}


=======
>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9
  -- File Explorer
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

<<<<<<< HEAD
  -- Mason for LSP/DAP/Linters
=======
  -- ✅ Mason for LSP/DAP/Linters
>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"

  -- Statusline
  use "nvim-lualine/lualine.nvim"
  use "andweeb/presence.nvim"

<<<<<<< HEAD
  -- Autocompletion
use "hrsh7th/nvim-cmp"
use "hrsh7th/cmp-nvim-lsp"
use "hrsh7th/cmp-buffer"
use "hrsh7th/cmp-path"
use "hrsh7th/cmp-cmdline"
use "L3MON4D3/LuaSnip"
use "saadparwaiz1/cmp_luasnip"
use "rafamadriz/friendly-snippets"


=======
>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9
  -- Telescope (Fuzzy finder)
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

<<<<<<< HEAD
  -- Jupyter / Notebook-like cells
  use {
    "dccsillag/magma-nvim",
    run = ":UpdateRemotePlugins",
    config = function()
      vim.g.magma_automatically_open_output = false
      vim.g.magma_image_provider = "ueberzug"
    end
  }

  -- Snippets + Completion
  use {
    "L3MON4D3/LuaSnip",
    requires = { "rafamadriz/friendly-snippets" }
  }

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    }
  }
=======
 -- 🧪 Jupyter / Notebook-like cells
use {
  "dccsillag/magma-nvim",
  run = ":UpdateRemotePlugins",
  config = function()
    vim.g.magma_automatically_open_output = false
    vim.g.magma_image_provider = "ueberzug"
  end
}

>>>>>>> 1b44ee9e33edb383169cd84f99bad9a08c5cd6f9

  -- Sync plugins after cloning packer
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
