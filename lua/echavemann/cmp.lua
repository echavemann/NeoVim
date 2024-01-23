local M = {
  "nvim-cmp",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",
  },
  opts = function(_, opts)
    opts.snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    }
    table.insert(opts.sources, { name = "luasnip" })
  end,
}

return M
