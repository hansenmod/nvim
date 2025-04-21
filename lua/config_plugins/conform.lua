require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		tex = { "latexindent" ,"llf"},
		json={'jq'}
	},
})
