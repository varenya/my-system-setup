return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "rust_analyzer", "tsgo" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("tsgo")
			vim.lsp.enable("oxlint")
			vim.lsp.enable("ruff")
			vim.lsp.enable("ty")
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			-- LSP buffer diagnostics → qf (fast, current open files)
			vim.keymap.set("n", "<leader>dq", function()
				vim.diagnostic.setqflist({ severity = vim.diagnostic.severity.ERROR })
			end, { desc = "LSP errors → quickfix" })

			-- Full project tsc check → qf (slow, complete)
			vim.keymap.set("n", "<leader>tc", function()
				vim.cmd("compiler tsc")
				vim.cmd("make! --noEmit")
				vim.cmd("copen")
			end, { desc = "tsc project check → quickfix" })
		end,
	},
}
