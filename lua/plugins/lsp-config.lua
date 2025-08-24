return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- Trigger signature popup manually
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {
			bind = true,
			handler_opts = {
				border = "rounded",
			},
			hint_enable = false, -- disable virtual text hint
			floating_window = false, -- don't show popup automatically
		},
		config = function(_, opts)
			local signature = require("lsp_signature")
			signature.setup(opts)

			-- Optional: map a key to trigger signature help manually
			vim.keymap.set("i", "<C-s>", function()
				signature.toggle_float_win()
			end, { desc = "LSP Signature Help" })
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"html",
					"cssls",
					"ts_ls",
					"emmet_ls",
					"csharp_ls",
					"jsonls",
					"pylsp",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.emmet_ls.setup({
				capabilities = capabilities,
				filetypes = { "html", "css", "scss", "javascriptreact", "typescriptreact" },
			})
			lspconfig.csharp_ls.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.eslint.setup({
				settings = {
					-- Example: auto-fix on save
					format = { enable = true },
				},
				on_attach = function(client, bufnr)
					-- optional: run ESLint fix on save
					-- 	vim.api.nvim_create_autocmd("BufWritePre", {
					-- 		buffer = bufnr,
					-- 		command = "EslintFixAll",
					-- 	})
				end,
			})

			-- Go to definition
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			-- Go to declaration
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			-- Hover docs
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- Go to implementation
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			-- Go to type definition
			vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
			-- Rename symbol
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			-- Code action
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			-- Show references
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			-- Format buffer
			vim.keymap.set("n", "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, {})

			-- Auto-show floating diagnostic on hover
			vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })]])

			-- Auto-show floating diagnostic on hover
			vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })]])

			-- Optional: wrap and format diagnostic config
			vim.diagnostic.config({
				virtual_text = false, -- turn off inline text
				float = {
					border = "rounded",
					source = "always",
					max_width = 80,
					wrap = true,
				},
				severity_sort = true,
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = " ",
						[vim.diagnostic.severity.WARN] = " ",
						[vim.diagnostic.severity.INFO] = "󰋼 ",
						[vim.diagnostic.severity.HINT] = "󰌵 ",
					},
					numhl = {
						[vim.diagnostic.severity.ERROR] = "",
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.HINT] = "",
						[vim.diagnostic.severity.INFO] = "",
					},
				},
				underline = true,
				update_in_insert = false,
			})

			-- Optional: Diagnostics keymaps
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
		end,
	},
}
