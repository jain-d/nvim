return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "cpp", "c_sharp", "lua", "vim", "html", "css", "scss", "javascript", "json", "typescript", "python", "go", "query", "bash", "markdown" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      })
  end
}
