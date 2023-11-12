local M = {
  "williamboman/mason.nvim",
  commit = "4546dec8b56bc56bc1d81e717e4a935bc7cd6477",
  cmd = "Mason",
  event = "BufReadPre",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      commit = "93e58e100f37ef4fb0f897deeed20599dae9d128",
    },
  },
}

function M.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup {
    ensure_installed = require("utils").servers,
    automatic_installation = true,
  }
end

return M
