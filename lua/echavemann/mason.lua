local M = {
  "williamboman/mason.nvim",
  cmd = "Mason",
  event = "BufReadPre",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
    },
  },
}

function M.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup {
    ensure_installed = {"cmake","dockerls","clangd","jsonls","pylsp","bashls"},
    automatic_installation = true,
  }
end

return M
