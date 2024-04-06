local M = {}

function M.GetPythonPath(workspace)
  local path = require("lspconfig/util").path
  if vim.env.VIRTUAL_ENV then return path.join(vim.env.VIRTUAL_ENV, "bin", "python") end
  for _, pattern in ipairs { "*", ".*" } do
    local match = vim.fn.glob(path.join(workspace, pattern, ".venv"))
    if match ~= "" then return path.join(path.dirname(match), "bin", "python") end
  end
  return vim.fn.exepath "python3" or vim.fn.exepath "python" or "python"
end

return M
