-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
require("dap.ext.vscode").load_launchjs()

---@diagnostic disable-next-line: missing-fields
require("notify").setup {
  render = "compact",
  timeout = 600,
}

-- Auto activate python virtual environment
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Auto select virtualenv Nvim open",
  pattern = "*",
  callback = function()
    local venv = vim.fn.finddir(".venv", vim.fn.getcwd() .. ";")
    if venv ~= "" then require("venv-selector").retrieve_from_cache() end
  end,
  once = true,
})
