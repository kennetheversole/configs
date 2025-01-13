return {
  {
    "mfussenegger/nvim-dap", -- Debug Adapter Protocol
    "jayp0521/mason-nvim-dap.nvim", -- Mason integration with nvim-dap
    lazy = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
        require("mason-lspconfig").setup {
            ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "jsonls",
                    "jqls",
                    "marksman",
                    "typos_lsp",
                    "bashls",
                    "ansiblels",
                    "bashls",
                    "harper_ls",
                    "dockerls",
                    "docker_compose_language_service",
                    "ast_grep",
                    "html",
                    "jinja_lsp",
                    "ltex",
                    "pylsp",
                    "yamlls"
                },
        }
    end
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        "williamboman/mason.nvim",
    },

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })
      lspconfig.bashls.setup({
        capabilities = capabilities
      })
      lspconfig.harper_ls.setup({
        capabilities = capabilities
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities
      })
      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities
      })

      lspconfig.jqls.setup({
        capabilities = capabilities
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities
      })
      lspconfig.typos_lsp.setup({
        capabilities = capabilities
      })
      lspconfig.ansiblels.setup({
        capabilities = capabilities
      })


      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end,
  },
}
