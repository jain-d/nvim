return {
  "folke/tokyonight.nvim",
  name =  "tokyonight",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup({
      style = "night",
      styles = {
        keywords = { bold = true }
      }
    })
    vim.cmd[[colorscheme tokyonight]]
  end,
}
--[[
return {
  "catppuccin/nvim",
  name =  "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd[[colorscheme catppuccin-mocha]]
--  end,
--}
--]]
