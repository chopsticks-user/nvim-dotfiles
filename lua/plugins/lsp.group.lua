return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "rust_analyzer",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("langs").lspSetup({
        lsp = require("lspconfig"),
        cap = require("cmp_nvim_lsp").default_capabilities(),
      })

      --local lspconfig = require("lspconfig")
      --local cap = require("cmp_nvim_lsp").default_capabilities()
      --lspconfig.lua_ls.setup({
      --capabilities = cap,
      --})

      -- todo: LspAttach
      local vlb = vim.lsp.buf
      local vk = vim.keymap
      vk.set("n", "K", vlb.hover, {})
      vk.set("n", "<leader>cd", vlb.definition, {})
      vk.set({ "n", "v" }, "<leader>ca", vlb.code_action, {})
    end,
  },
}
