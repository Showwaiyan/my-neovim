local home = os.getenv("HOME")
local workspace_path = home .. "/.local/share/nvim/jdtls-workspace/"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = workspace_path .. project_name

local status, jdtls = pcall(require, "jdtls")
if not status then
	return
end
local extendedClientCapabilities = jdtls.extendedClientCapabilities

local config = {
	cmd = {
		"java",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-javaagent:" .. home .. "/.local/share/nvim/mason/packages/jdtls/lombok.jar",
		"-jar",
		vim.fn.glob(home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),
		"-configuration",
		home .. "/.local/share/nvim/mason/packages/jdtls/config_mac",
		"-data",
		workspace_dir,
	},
	root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),

	settings = {
		java = {
			signatureHelp = { enabled = true },
			extendedClientCapabilities = extendedClientCapabilities,
			maven = {
				downloadSources = true,
			},
			referencesCodeLens = {
				enabled = true,
			},
			references = {
				includeDecompiledSources = true,
			},
			inlayHints = {
				parameterNames = {
					enabled = "all", -- literals, all, none
				},
			},
			format = {
				enabled = false,
			},
		},
	},

	init_options = {
		bundles = {},
	},

on_attach = function(client, bufnr)
		print("JDTLS attached with client ID: " .. client.id)

		-- Wait a moment then stop any other jdtls clients
		vim.defer_fn(function()
			local clients = vim.lsp.get_active_clients({ name = "jdtls" })
			for _, other_client in pairs(clients) do
				-- Stop clients that are not this one and have different characteristics
				if other_client.id ~= client.id and
				   (not other_client.config.root_dir or
				    (other_client.config.settings and
				     other_client.config.settings.java and
				     vim.tbl_isempty(other_client.config.settings.java))) then
					print("Stopping unwanted JDTLS client ID: " .. other_client.id)
					other_client.stop()
				end
			end
		end, 1000) -- Wait 1 second after attach
	end,

}
require("jdtls").start_or_attach(config)

-- vim.keymap.set('n', '<leader>co', "<Cmd>lua require'jdtls'.organize_imports()<CR>", { desc = 'Organize Imports' })
-- vim.keymap.set('n', '<leader>crv', "<Cmd>lua require('jdtls').extract_variable()<CR>", { desc = 'Extract Variable' })
-- vim.keymap.set('v', '<leader>crv', "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", { desc = 'Extract Variable' })
-- vim.keymap.set('n', '<leader>crc', "<Cmd>lua require('jdtls').extract_constant()<CR>", { desc = 'Extract Constant' })
-- vim.keymap.set('v', '<leader>crc', "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>", { desc = 'Extract Constant' })
-- vim.keymap.set('v', '<leader>crm', "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>", { desc = 'Extract Method' })

-- Set a Vim motion to <Space> + <Shift>J + o to organize imports in normal mode
vim.keymap.set(
	"n",
	"<leader>Jo",
	"<Cmd> lua require('jdtls').organize_imports()<CR>",
	{ desc = "[J]ava [O]rganize Imports" }
)
-- Set a Vim motion to <Space> + <Shift>J + v to extract the code under the cursor to a variable
vim.keymap.set(
	"n",
	"<leader>Jv",
	"<Cmd> lua require('jdtls').extract_variable()<CR>",
	{ desc = "[J]ava Extract [V]ariable" }
)
-- Set a Vim motion to <Space> + <Shift>J + v to extract the code selected in visual mode to a variable
vim.keymap.set(
	"v",
	"<leader>Jv",
	"<Esc><Cmd> lua require('jdtls').extract_variable(true)<CR>",
	{ desc = "[J]ava Extract [V]ariable" }
)
-- Set a Vim motion to <Space> + <Shift>J + <Shift>C to extract the code under the cursor to a static variable
vim.keymap.set(
	"n",
	"<leader>JC",
	"<Cmd> lua require('jdtls').extract_constant()<CR>",
	{ desc = "[J]ava Extract [C]onstant" }
)
-- Set a Vim motion to <Space> + <Shift>J + <Shift>C to extract the code selected in visual mode to a static variable
vim.keymap.set(
	"v",
	"<leader>JC",
	"<Esc><Cmd> lua require('jdtls').extract_constant(true)<CR>",
	{ desc = "[J]ava Extract [C]onstant" }
)
-- Set a Vim motion to <Space> + <Shift>J + t to run the test method currently under the cursor
vim.keymap.set(
	"n",
	"<leader>Jt",
	"<Cmd> lua require('jdtls').test_nearest_method()<CR>",
	{ desc = "[J]ava [T]est Method" }
)
-- Set a Vim motion to <Space> + <Shift>J + t to run the test method that is currently selected in visual mode
vim.keymap.set(
	"v",
	"<leader>Jt",
	"<Esc><Cmd> lua require('jdtls').test_nearest_method(true)<CR>",
	{ desc = "[J]ava [T]est Method" }
)
-- Set a Vim motion to <Space> + <Shift>J + <Shift>T to run an entire test suite (class)
vim.keymap.set("n", "<leader>JT", "<Cmd> lua require('jdtls').test_class()<CR>", { desc = "[J]ava [T]est Class" })
-- Set a Vim motion to <Space> + <Shift>J + u to update the project configuration
vim.keymap.set("n", "<leader>Ju", "<Cmd> JdtUpdateConfig<CR>", { desc = "[J]ava [U]pdate Config" })
