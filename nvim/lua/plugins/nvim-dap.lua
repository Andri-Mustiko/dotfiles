return
{
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio", -- Required dependency for dap-ui
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    -- Automatically open/close UI
    dap.listeners.before.attach.dapui_config = function() dapui.open() end
    dap.listeners.before.launch.dapui_config = function() dapui.open() end
    
    -- Adapter configuration for netcoredbg
    dap.adapters.coreclr = {
      type = 'executable',
      command = '/usr/bin/netcoredbg', -- Ensure this path is correct on your system
      args = {'--interpreter=vscode'}
    }

    -- Set up C# file type
    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net9.0/MyApi.dll', 'file')
        end,
      },
    }
  end
}
