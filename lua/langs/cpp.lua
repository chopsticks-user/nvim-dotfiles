return {
  lspSetup = function(params)
    params.lsp.clangd.setup({
      capabilities = params.cap,
    })
    params.lsp.cmake.setup({
      capabilities = params.cap,
    })
  end,
  lfSetup = function(lfb)
    return {
      --lfb.formatting.clang_format, -- c, cs, cpp, json, java, js
      --lfb.diagnostics.cmake_lint,
      --lfb.formatting.gersemi,
      -- gccdiag -- c, cpp
    }
  end,
}
