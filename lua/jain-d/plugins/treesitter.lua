return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "cpp", "lua", "vim", "html", "css", "javascript", "json", "typescript", "python", "go", "query", "bash", "markdown", "yaml" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      })
  end
}
