-- Customize Mason plugins

local pythonPath = function()
  -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
  -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
  -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
  local cwd = vim.fn.getcwd()
  if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
    return cwd .. "/venv/bin/python"
  elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
    return cwd .. "/.venv/bin/python"
  else
    return "/usr/bin/python"
  end
end

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        -- "lua_ls",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        -- "stylua",
        "flake8",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        -- "python",
        -- add more arguments for adding more debuggers
      },
      handlers = {
        -- python = function(source_name)
        --   local dap = require "dap"
        --   dap.adapters.python = {
        --     type = "executable",
        --     command = pythonPath(),
        --     args = {
        --       "-m",
        --       "debugpy.adapter",
        --     },
        --   }
        --
        --   dap.configurations.python = {
        --     {
        --       type = "python",
        --       request = "launch",
        --       name = "Launch file",
        --       program = "${file}", -- This configuration will launch the current file if used.
        --     },
        --     {
        --       name = "Python: Remote Attach",
        --       type = "python",
        --       request = "attach",
        --       connect = {
        --         host = "localhost",
        --         port = 5678,
        --       },
        --       cwd = vim.fn.getcwd(),
        --       pathMappings = {
        --         {
        --           localRoot = function() return vim.fn.input("Local code folder > ", vim.fn.getcwd(), "file") end,
        --           remoteRoot = function() return vim.fn.input("Container code folder > ", "/", "file") end,
        --         },
        --       },
        --       justMyCode = true,
        --     },
        --   }
        -- end,
      },
    },
  },
}
