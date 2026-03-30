return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch= "master",
    build = ':TSUpdate',
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "javascript"},
        highlight = { enable = true },
        ident = { enable = true },
      })
    end
  }
}
