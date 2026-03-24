return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- optional but recommended
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		opts = {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>b", require("telescope.builtin").buffers, { desc = "[B]uffers" })
			vim.keymap.set("n", "<leader>d", function()
				builtin.diagnostics({
					bufnr = 0, -- Limit to current buffer
					-- Optional: additional configuration here
				})
			end, { desc = "Telescope Diagnostics (Current Buffer)" })

			-- Optional: a keymap to send the diagnostics to the location list
			vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Send Diagnostics to Location List" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
