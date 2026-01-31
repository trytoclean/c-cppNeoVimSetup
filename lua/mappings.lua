require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- -- 调试控制
map("n", "<F5>", function()
  require("dap").continue()
end)
map("n", "<F10>", function()
  require("dap").step_over()
end)
map("n", "<F11>", function()
  require("dap").step_into()
end)
map("n", "<F12>", function()
  require("dap").step_out()
end)

-- 断点
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end)
map("n", "<leader>dB", function()
  require("dap").set_breakpoint(vim.fn.input "Condition: ")
end)

-- UI
map("n", "<leader>du", function()
  require("dapui").toggle()
end)

-- Example configuration for keymaps in init.lua
vim.keymap.set("n", "<leader>cb", ":CMakeBuild<CR>", { silent = true, desc = "Build project" })
vim.keymap.set("n", "<leader>cr", ":CMakeRun<CR>", { silent = true, desc = "Run executable" })
vim.keymap.set("n", "<leader>cg", ":CMakeGenerate<CR>", { silent = true, desc = "Generate build files" })
-- Example for a leader mapping
vim.keymap.set("n", "<leader>ct", ":CMakeTest<CR>", { silent = true, desc = "Run tests" })

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
