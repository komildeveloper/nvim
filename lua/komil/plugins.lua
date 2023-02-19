local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

-- Install your plugins here
return packer.startup(function(use)
	use("wbthomason/packer.nvim")

  -- LSP
  -- use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
  use { "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" } -- enable LSP
  use { "williamboman/mason.nvim", commit = "bfc5997e52fe9e20642704da050c415ea1d4775f" }
  use { "williamboman/mason-lspconfig.nvim", commit = "0eb7cfefbd3a87308c1875c05c3f3abac22d367c" }
  use { "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" } -- for formatters and linters
  use { "RRethy/vim-illuminate", commit = "a2e8476af3f3e993bb0d6477438aad3096512e42" }

  -- cmp plugins
  use { "hrsh7th/nvim-cmp" } -- The completion plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
  use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
  use { "hrsh7th/cmp-nvim-lua" }

  -- snippets
  use { "L3MON4D3/LuaSnip" } --snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

	-- TreeSitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", commit = "e00952111e94f95800a32eeedb057e7ad365960c" })
  use "p00f/nvim-ts-rainbow"
  use "windwp/nvim-ts-autotag"

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
	})
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
  use { "nvim-telescope/telescope-file-browser.nvim" }

  use "utilyre/barbecue.nvim"
  use "SmiteshP/nvim-navic"

	-- Main Plugins
	use("folke/which-key.nvim")
	use("nvim-pack/nvim-spectre")
	use("numToStr/Comment.nvim")
  use { "JoosepAlviste/nvim-ts-context-commentstring" }
  use { "moll/vim-bbye" }
	use("akinsho/toggleterm.nvim")
  use { "ahmedkhalf/project.nvim" }
  use { "lewis6991/impatient.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "windwp/nvim-autopairs" }

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	})
	-- use("rcarriga/nvim-notify")
	use("karb94/neoscroll.nvim")
	use("nvim-lualine/lualine.nvim")
  use "goolord/alpha-nvim"
  use { "ghillb/cybu.nvim" }
  use { "rmagatti/auto-session" }
  use { "rmagatti/session-lens" }
  use { "NvChad/nvim-colorizer.lua" }
  use { "rcarriga/nvim-notify" }
  -- use "natecraddock/sessions.nvim"
  -- use "goolord/alpha-nvim"

	-- NvimTree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	-- Git
	use({
		"lewis6991/gitsigns.nvim"
	})

  use { "nvim-lua/plenary.nvim" }

	-- Colorschemes
  use "folke/tokyonight.nvim"
  use "lunarvim/darkplus.nvim"

  -- SchemaStore
  use "b0o/SchemaStore.nvim"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
