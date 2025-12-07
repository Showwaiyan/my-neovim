return {
	"NickvanDyke/opencode.nvim",
	dependencies = {
		-- Recommended for `ask()` and `select()`.
		-- Required for `snacks` provider.
		---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
		{ "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
	},
	config = function()
		---@type opencode.Opts
		vim.g.opencode_opts = {
			-- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition".
		}

		-- Required for `opts.events.reload`.
		vim.o.autoread = true

		-- OpenCode keymaps with <leader>o prefix
		vim.keymap.set({ "n", "x" }, "<leader>oa", function()
			require("opencode").ask("@this: ", { submit = true })
		end, { desc = "OpenCode: Ask" })
		vim.keymap.set({ "n", "x" }, "<leader>os", function()
			require("opencode").select()
		end, { desc = "OpenCode: Select action" })
		vim.keymap.set({ "n", "x" }, "<leader>op", function()
			require("opencode").prompt("@this")
		end, { desc = "OpenCode: Add to prompt" })
		vim.keymap.set({ "n", "t" }, "<leader>ot", function()
			require("opencode").toggle()
		end, { desc = "OpenCode: Toggle" })
		vim.keymap.set("n", "<leader>ou", function()
			require("opencode").command("session.half.page.up")
		end, { desc = "OpenCode: Half page up" })
		vim.keymap.set("n", "<leader>od", function()
			require("opencode").command("session.half.page.down")
		end, { desc = "OpenCode: Half page down" })

	end,
}
