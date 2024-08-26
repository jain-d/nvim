return {
   "neovim/nvim-lspconfig",
   event = { "BufReadPre", "BufNewFile" },
   dependencies = {
      "hrsh7th/cmp-nvim-lsp"
   },
   config = function()
      local lspconfig = require("lspconfig")

      local cmp_nvim_lsp = require("cmp_nvim_lsp")

      local keymap = vim.keymap

      local opts = { noremap = true, silent = true }
      local on_attach = function(client, bufnr)
         opts.buffer = bufnr

         opts.desc = "Show References"
         keymap.set("n", "gR", ":Telescope lsp_references<CR>", opts)

         opts.desc = "Go to Defination"
         keymap.set("n", "gd", ":Telescope lsp_definations<CR>", opts)

         opts.desc = "Go to Declaration"
         keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

         opts.desc = "Documentation of what's under the cursor"
         keymap.set("n", "K", vim.lsp.buf.hover, opts)

      end

      local capabilities = cmp_nvim_lsp.default_capabilities()

      local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signs) do
         local hl = "DiagnosticSign" .. type
         vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      lspconfig["html"].setup({
         capabilities = capabilities,
         on_attach = on_attach,
      })

      lspconfig["cssls"].setup({
         capabilities = capabilities,
         on_attach = on_attach,
      })

      lspconfig["tsserver"].setup({
         capabilities = capabilities,
         on_attach = on_attach,
      })

      lspconfig["pyright"].setup({
         capabilities = capabilities,
         on_attach = on_attach,
      })

      lspconfig["lua_ls"].setup({
         capabilities = capabilities,
         on_attach = on_attach,
         settings = {
            Lua = {
               diagnostics = {
                  globals = { "vim" },
               },
               workspace = {
                  library = {
                     [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                     [vim.fn.stdpath("config") .. "/lua"] = true,
                  },
               },
            }
         }
      })
      
   end
}
