vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.keymap.set("n", "<leader>e", function()
	vim.diagnostic.open_float({ focusable = true })
end, { desc = "Expand an Error into a float" })

vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })

vim.diagnostic.config({
	virtual_text = false, -- Disables inline text
	signs = true, -- Shows icons in the sign column
	underline = true, -- Underlines the problematic text
	virtual_lines = {
		current_line = true,
	},
})

-- window movements
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<C-i>", "<C-w>i", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })

-- Open/close quickfix list
vim.keymap.set("n", "<leader>qo", "<cmd>copen<CR>", { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>qc", "<cmd>cclose<CR>", { desc = "Close quickfix list" })

-- Navigate entries
vim.keymap.set("n", "]q", "<cmd>cnext<CR>", { desc = "Next quickfix item" })
vim.keymap.set("n", "[q", "<cmd>cprev<CR>", { desc = "Prev quickfix item" })
vim.keymap.set("n", "]Q", "<cmd>clast<CR>", { desc = "Last quickfix item" })
vim.keymap.set("n", "[Q", "<cmd>cfirst<CR>", { desc = "First quickfix item" })
