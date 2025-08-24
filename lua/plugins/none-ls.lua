return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- C#
				null_ls.builtins.formatting.csharpier,

				-- JavaScript
				null_ls.builtins.formatting.prettierd.with({
					prefer_local = "node_modules/.bin",
				}),
				require("none-ls.diagnostics.eslint").with({
					diagnostics_format = "[eslint] #{m}\n(#{c})",
					prefer_local = "node_modules/.bin",
				}),

				-- Python
				null_ls.builtins.formatting.black,
			},
		})
	end,
}
