local dap = require("dap")
local dapui = require("dapui")
local dap_vtext = require("nvim-dap-virtual-text")

dap_vtext.setup()
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
