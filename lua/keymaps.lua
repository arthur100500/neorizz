local k = vim.keymap.set

-- turn off move right
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostics
k("n", "<leader>q", function()
	vim.diagnostic.open_float(nil, {
		focusable = false,
		border = "single",
		source = "if_many",
	})
end, { desc = "show diagnostics under cursor" })

-- Window navigation
k("n", "<leader>h", "<C-w>h", { desc = "focus left window" })
k("n", "<leader>l", "<C-w>l", { desc = "focus right window" })
k("n", "<leader>j", "<C-w>j", { desc = "focus bottom window" })
k("n", "<leader>k", "<C-w>K", { desc = "focus top window" })

k({ "n", "v" }, "d", '"_d', { desc = "delete without yanking" })
k("x", "p", '"_dP', { desc = "paste without yanking replaced text" })
k("x", "P", '"_dP', { desc = "paste without yanking replaced text" })

vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "comment line" })
vim.keymap.set("v", "<leader>/", "gc", { remap = true, desc = "comment block" })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { desc = "show docs" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "show refs" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "code action" })

vim.keymap.set("i", "<A-z>", "<C-^>", { desc = "toggle RU/EN layout" })

-- nvim-dap

local dap = require("dap")
local dapui = require("dapui")

vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "DAP UI: Toggle" })
vim.keymap.set({ "n", "v" }, "<leader>de", dapui.eval, { desc = "DAP UI: Eval" })
vim.keymap.set("n", "<leader>ct", dap.continue, { desc = "DAP: Continue" })
vim.keymap.set("n", "<leader>bb", dap.toggle_breakpoint, { desc = "DAP: Toggle Breakpoint" })
vim.keymap.set("n", "<leader>so", dap.step_over, { desc = "DAP: Step Over" })
vim.keymap.set("n", "<leader>si", dap.step_into, { desc = "DAP: Step Into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "DAP: Step Out" })

