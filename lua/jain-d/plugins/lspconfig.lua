--[[

return {
   "neovim/nvim-lspconfig",
   event = { "BufReadPre", "BufNewFile" },
   dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      {"antosha417/nvim-lsp-file-operations", config = true },
   },
   config = function()
      local lspconfig = require("lspconfig")

      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      
      local keymap = vim.keymap

      local opt = { noremap = true, silent = true }
      
      local on_attach = function(client, bufnr)
         opts.buffer = bufnr

         opts.desc = "Show References"
         keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

         opts.desc = "Go to Declaration"
         keymap.set("n", "gD", vim.lsp.buf.Declaration, opts)

         opts.desc = "Go to Defination"
         keymap.set("n", "gD", "<cmd>Telescope lsp_definitions<CR>", opts)

         opts.desc = "Documentation of what's under the cursor"
         keymap.set("n", "K", vim.lsp.buf.hover, opts)
      end

      local capabilities = cmp_nvim_lsp.default_capabilites()

      local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signs) do
         local hl = "DiagnosticSign" .. type
         vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      mason_lspconfig.setup_handlers({
         -- default handler for installed servers
         function(server_name)
           lspconfig[server_name].setup({
             capabilities = capabilities,
           })
         end,

         -- html language server
         ["html"] = function()
            lspconfig["html"].setup({
               capabilities = capabilities,
               on_attach = on_attach,
            })
         end

         -- css language server
         ["cssls"] = function()
            lspconfig["cssls"].setup({
               capabilities = capabilities,
               on_attach = on_attach,
            })
         end

         -- JS TS language server
         ["eslint"] = function()
           lspconfig["eslint"].setup({
               capabilities = capabilities,
               on_attach = on_attach,
            })
         end

         -- Python language server
         ["pyright"] = function()
            lspconfig["pyright"].setup({
               capabilities = capabilities,
               on_attach = on_attach,
            })
         end

        --[[ 
        --    Language server
         [""] = function()
           lspconfig[""].setup({
               capabilities = capabilities,
               on_attach = on_attach,
            })
         end
         ]]--
--      })

--   end
--}

