return {
	-- Mason installs and manages packages, like language servers
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				"cssls",
				"eslint",
				"html",
				"jsonls",
				"ts_ls",
				"pyright",
				"tailwindcss",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier", -- JavaScript & Co. formatter
				"eslint_d", -- JavaScript formatter
				"stylua", -- lua formatter
				"ruff", -- Blazingly fast, comprehensive python formatter and linter, written in Rust
			},
		})
	end,
}
