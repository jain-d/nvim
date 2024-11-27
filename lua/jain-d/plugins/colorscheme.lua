return {
  "folke/tokyonight.nvim",
  name =  "tokyonight",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd[[colorscheme tokyonight-night]]
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
