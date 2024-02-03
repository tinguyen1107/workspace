require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "rust", "go", "javascript", "typescript", "yaml", "toml" },
	sync_install = false,
	auto_install = true,
	ignore_install = {},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
