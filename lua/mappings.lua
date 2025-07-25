require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

if os.getenv("TMUX") then
  map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end


-- Debug Adapter Protocol (DAP) keybindings
map("n", "<F5>", function() require("dap").continue() end, { desc = "DAP: Continue / Start" })
map("n", "<F10>", function() require("dap").step_over() end, { desc = "DAP: Step Over" })
map("n", "<F11>", function() require("dap").step_into() end, { desc = "DAP: Step Into" })
map("n", "<F12>", function() require("dap").step_out() end, { desc = "DAP: Step Out" })
map("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "DAP: Toggle Breakpoint" })
map("n", "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, { desc = "DAP: Set Conditional Breakpoint" })
map("n", "<leader>dr", function() require("dap").repl.open() end, { desc = "DAP: Open REPL" })
map("n", "<leader>dl", function() require("dap").run_last() end, { desc = "DAP: Run Last" })
map("n", "<leader>du", function() require("dapui").toggle() end, { desc = "DAP: Toggle UI" })
