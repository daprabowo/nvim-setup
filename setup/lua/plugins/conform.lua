return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			cpp = { "clang-format" },
			go = { "goimports", "goimports-reviser", "gofmt" },
			java = { "google-java-format" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			kotlin = { "ktlint" },
			lua = { "stylua" },
			markdown = { "prettier", "injected" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			sh = { "shfmt" },
			swift = { "swiftformat" },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		formatters = {
			black = { prepend_args = { "--fast" } },
			isort = { prepend_args = { "--profile", "black" } },
			["clang-format"] = { prepend_args = { "--style=Google" } },
			shfmt = { prepend_args = { "-i", "2" } },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
