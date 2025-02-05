return {
  lspSetup = function(params)
    params.lsp.rust_analyzer.setup({
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = false,
          },
        },
      },
      capabilities = params.cap,
    })
  end,
  lfSetup = function(lfb)
    return {}
  end,
}
