local M = {
	"L3MON4D3/LuaSnip",
}

M.config = function()
	local ls = require("luasnip")

	-- global variable
	LUASNIP_ENV = {
		s = require("luasnip.nodes.snippet").S,
		i = require("luasnip.nodes.insertNode").I,
		fmt = require("luasnip.extras.fmt").fmt,
		parse = require("luasnip.util.parser").parse_snippet,
		p = require("luasnip.extras").partial,
	}

	ls.config.set_config({
		history = true,
		updateevents = "TextChanged,TextChangedI",
		enable_autosnippets = true,
	})


	vim.keymap.set({ "i", "s" }, "<a-k>", function()
		if ls.jumpable(1) then
			ls.jump(1)
		end
	end)
	vim.keymap.set({ "i", "s" }, "<a-j>", function()
		if ls.jumpable(-1) then
			ls.jump(-1)
		end
	end)
end

return M
