return {
	{
		"williamboman/mason.nvim",
		cmd = { "MasonInstall", "MasonUninstall", "MasonUpdate", "MasonLog" },
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Declaration" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definitions" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "References" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format your code" })
		end,
	},
}
