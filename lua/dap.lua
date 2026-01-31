-- lua/configs/dap.lua
local dap = require("dap")

-- Configure the adapter for codelldb
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- Mason installs tools in this standard path
    command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
    args = {"--port", "${port}"},
  }
}

-- Configure how to launch for C/C++/Rust
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

-- Reuse the same config for C and Rust
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

