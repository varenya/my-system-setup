return {
	{
		"saghen/blink.cmp",
		version = "*",
		dependencies = { "rafamadriz/friendly-snippets", lazy = false },
		opts = {
			keymap = { preset = "default" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				providers = {
					snippets = {
						min_keyword_length = 1, -- default is often 2, which hides "ca"
						opts = {
							friendly_snippets = true,
							extended_filetypes = {
								typescript = { "javascript" }, -- ts files also get js snippets
								typescriptreact = { "javascript", "typescript" },
							},
						},
					},
				},
			},
		},
	},
}
