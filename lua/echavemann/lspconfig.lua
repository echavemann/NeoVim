local M = {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-nvim-lsp" },
	},
}

M.config = function()
	local lspconfig = require("lspconfig")
	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
	capabilities.textDocument.completion.completionItem.snippetSupport = true

	local on_attach = function()
		local bufopts = { noremap = true, silent = true, buffer = 0 }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
		vim.keymap.set("n", "<space>df", vim.diagnostic.goto_next, bufopts)
	end

	local servers = {
		"pylsp",
        "clangd",
        "ruff",
        "bashls",
        "cmake"
	}

	-- setup servers
	for _, lsp in pairs(servers) do
		lspconfig[lsp].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim", "LUASNIP_ENV" },
					},
				},
				gopls = gopls_settings,
			},
		})
	end

    lspconfig.pylsp.setup {
      capabilities = capabilities,
      settings = {
        pylsp = {
          plugins = {
            rope_autoimport = {
              enabled = true,
              memory = true,
            },
            mypy = {
                enabled = true,
            },
            pycodestyle = { enabled = false },
            pyflakes = { enabled = false },
            mccabe = { enabled = false },
          },
        },
      },
    }
end
return M
