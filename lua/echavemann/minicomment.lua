local M = {
  "echasnovski/mini.comment",
  event = "VeryLazy",
  opts = {
    options = {
      custom_commentstring = function()
        return vim.bo.commentstring
      end,
    },
  },
}

return M
