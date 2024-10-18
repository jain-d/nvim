return {
   "nvim-lualine/lualine.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },
   config = function()
      local lualine = require("lualine")

      lualine.setup({
         options = {
            theme = 'moonfly'
         },
         sections = {
            lualine_b = {
               {"branch", icon = {"", color={fg="orange"}}},
               {"diff", icons_enabled= true},
               {"diagnostics", icons_enabled= true}
            }
         }
      })
   end,
}
