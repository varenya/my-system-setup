return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		opts = {
			keymap = { preset = "enter" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				providers = {
					snippets = {
						min_keyword_length = 1, -- default is often 2, which hides "ca"
						score_offset = 5, -- bumps snippets higher in the dropdown
					},
				},
			},
		},
	},
}
