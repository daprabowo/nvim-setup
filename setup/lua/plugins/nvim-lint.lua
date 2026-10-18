return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufNewFile", "BufWritePost" },
	config = function()
		local lint = require("lint")

		lint.linters.swift_format_lint = {
			cmd = "swift-format",
			args = { "lint" },
			stdin = false,
			stream = "stderr",
			ignore_exitcode = true,
			parser = require("lint.parser").from_pattern(
				"([^:]+):(%d+):(%d+):%s+(%w+):%s+(.*)",
				{ "file", "lnum", "col", "severity", "message" }
			),
		}

		lint.linters_by_ft = {
			go = { "golangcilint" },
			swift = { "swift_format_lint" },
			sql = { "sqlfluff" },
			yaml = { "yamllint" },
		}

		local sqlfluff = lint.linters.sqlfluff
		sqlfluff.args = {
			"lint",
			"--format=json",
			"--dialect=postgres",
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("lint", { clear = true }),
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
