return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
        require("mason-lspconfig").setup {
            ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "dockerls",
                    "jsonls",
                    "jqls",
                    "marksman",
                    "typos_lsp",
                    "bashls",
                    "pyright"
                },
        }
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.html.setup({
        capabilities = capabilities
        })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
        })
      lspconfig.dockerls.setup({
         capabilities = capabilities
        })
      lspconfig.rust_analyzer.setup({
         capabilities = capabilities
        })
      lspconfig.pyright.setup({
         capabilities = capabilities
        })
      lspconfig.yamlls.setup({
        settings = {
        yaml = {
           schemas = { kubernetes = "globPattern" }
            }
        }})
      lspconfig.jqls.setup({
         capabilities = capabilities
        })


      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
