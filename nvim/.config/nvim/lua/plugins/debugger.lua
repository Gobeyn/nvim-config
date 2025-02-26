return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_py = require("dap-python")
		local dap_virtual = require("nvim-dap-virtual-text")

		dapui.setup({})
		dap_virtual.setup({
			commented = true,
		})

		-- Python Debugger Setup
		dap_py.setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python3")
		dap.configurations.python = {
			{
				type = "python",
				request = "launch",
				name = "Launch file",
				program = "${file}",
			},
		}

		-- C Debugger Setup
		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
		}

		dap.configurations.c = {
			{
				name = "Launch",
				type = "gdb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = false,
			},
		}

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

		vim.fn.sign_define("DapBreakpoint", {
			text = "",
			texthl = "DiagnosticSignError",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapBreakpointRejected", {
			text = "", -- or "❌"
			texthl = "DiagnosticSignError",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapStopped", {
			text = "", -- or "→"
			texthl = "DiagnosticSignWarn",
			linehl = "Visual",
			numhl = "DiagnosticSignWarn",
		})

		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {}) -- Debugger Breakpoint
		vim.keymap.set("n", "<leader>dc", dap.continue, {}) -- Debugger Continue
		vim.keymap.set("n", "<leader>dq", dap.terminate, {}) -- Debugger Quit
		vim.keymap.set("n", "<leader>di", dap.step_into, {}) -- Debugger Into
		vim.keymap.set("n", "<leader>dn", dap.step_over, {}) -- Debugger Next
		vim.keymap.set("n", "<leader>do", dap.step_out, {}) -- Debugger Out
	end,
}
