return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		--setup
		dapui.setup()

		--languages debugger setup
		-- JS
		local js_debugger_path = vim.fn.stdpath("data")
			.. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js"

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = 8123,
			executable = {
				command = "node",
				args = { js_debugger_path, "8123" },
			},
		}
		dap.configurations.javascript = {
			{
				type = "pwa-node",
				request = "attach",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
				runtimeExecutable = "node",
				console = "integratedTerminal",
				skipFiles = { "<node_internals>/**" },
			},
		}

		--Python
		local debugpy_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
		dap.adapters.python = {
			type = "executable",
			command = debugpy_path,
			args = { "-m", "debugpy.adapter" },
		}

		dap.configurations.python = {
			{
				type = "python",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
			},
		}

		-- ui
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- debug
		vim.keymap.set("n", "<Leader>dt", function()
			dap.toggle_breakpoint()
		end)
		vim.keymap.set("n", "<Leader>dc", function()
			dap.continue()
		end)
		vim.keymap.set("n", "<Leader>do", dap.step_over, { desc = "DAP step over" })
		vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "DAP step into" })
		vim.keymap.set("n", "<Leader>du", dap.step_out, { desc = "DAP step out" })

		-- DAP signs
		vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "DiagnosticError" })
		vim.fn.sign_define("DapStopped", { text = "🟦", texthl = "DiagnosticInfo", linehl = "Visual" })
	end,
}
