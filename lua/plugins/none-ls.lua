return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = require("langs").lfSetup(null_ls.builtins),
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<C-s>", ":w | lua vim.lsp.buf.format()<CR>", {})
	end,
}
