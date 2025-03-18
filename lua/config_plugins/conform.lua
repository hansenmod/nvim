require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = {
			formatters = { "gofumpt", "goimports" },
			run_all_formatters = true,
		},
	},
})require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = {
			formatters = { "gofumpt", "goimports" },
			run_all_formatters = true,
		},
	},
})
