local theme = require("lazycfg.plg.themes")
local telescope = require("lazycfg.plg.telescope")
local treesitter = require("lazycfg.plg.tree-sitter")
local undotree = require("lazycfg.plg.undotree")

return {
	theme,
	telescope,
	treesitter,
	undotree,

	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
}
