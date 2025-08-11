return {
	"windwp/nvim-ts-autotag",
	event = "InsertEnter", -- optional: lazy load
	config = function()
		require("nvim-ts-autotag").setup({
			-- top-level keys, no 'opts' wrapper
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = false,
			},

			-- Per filetype overrides
			filetypes = {
				"html",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"svelte",
				"vue",
				"tsx",
				"jsx",
				"xml",
			},
		})
	end,
}
