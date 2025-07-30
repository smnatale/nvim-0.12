vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/windwp/nvim-ts-autotag" },
})

require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
	},
})

require("nvim-ts-autotag").setup()

-- allows eslint + prettier to work in tandem
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format()
	end,
})
