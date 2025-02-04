return {
	lspSetup = function(params)
		params.lsp.lua_ls.setup({
			capabilities = params.cap,
		})
	end,
	lfSetup = function(lfb)
		return {
			lfb.formatting.stylua,
			-- lfb.completion.luasnip, -- nvim lua
			-- refactoring -- c, cpp, c#, lua, js, ts, go, py, java, php, ruby
			-- lfb.diagnostics.selene,
		}
	end,
}
