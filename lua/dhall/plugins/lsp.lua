return { -- LSP Configuration & Plugins
	"neovim/nvim-lspconfig",
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- Useful status updates for LSP
		-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
		{ "j-hui/fidget.nvim", opts = {} },

		-- Additional lua configuration, makes nvim stuff amazing!
		"folke/neodev.nvim",
		-- show current code contexts,
		"SmiteshP/nvim-navic",
	},
	config = function()
		require("neodev").setup()

		-- enable mason
		require("mason").setup()

		-- enable mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")
		require("mason-lspconfig").setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"emmet_ls",
				"clangd",
				"rust_analyzer",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		require("mason-null-ls").setup({
			-- list of formatters & linters for mason to install
			ensure_installed = {
				"prettier", -- ts/js formatter
				"stylua", -- lua formatter
				"eslint_d", -- ts/js linter,
				"rustfmt",
				"gccdiag",
				"clang_format",
			},
			-- auto-install configured formatters & linters (with null-ls)
			automatic_installation = true,
		})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

		local lspconfig = require("lspconfig")

		local servers = require("dhall.servers")

		mason_lspconfig.setup_handlers({
			function(server_name)
				if server_name == "rust_analyzer" then
					-- skip because rust-tools will get it for us
					return
				end
				lspconfig[server_name].setup({
					capabilities = capabilities,
					on_attach = require("dhall.on_attach"),
					settings = servers[server_name],
				})
			end,
		})

		lspconfig["ghdl_ls"].setup({
			--capabilities = capabilities,
			on_attach = require("dhall.on_attach"),
			settings = servers["vhdl_ls"],
		})
	end,
}
