return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branch = "master",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				ensure_installed = { "lua", "javascript", "typescript", "go" },
				highlight = { enable = true },
				ident = { enable = true },
			})
		end,
	},
}
