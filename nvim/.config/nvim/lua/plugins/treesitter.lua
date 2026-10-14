return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        install = { "lua", "javascript", "typescript", "go" },
        highlight = { enable = true },
        ident = { enable = true },
      })
    end,
  },
}
