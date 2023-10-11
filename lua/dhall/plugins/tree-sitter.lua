return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	build = ":TSUpdate",
	opts = {
		-- Items to always have installed
		ensure_installed = { "c", "lua", "vim", "help", "query", "cpp", "rust", "javascript", "typescript" },

		-- Install parsers synchronously
		sync_install = false,

		-- Automatically install missing parsers when entering buffer
		auto_install = true,

		-- Syntax highlighting
		highlight = {
			enable = true,
			-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
			-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
			-- Using this option may slow down your editor, and you may see some duplicate highlights.
			-- Instead of true it can also be a list of languages
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = false, -- indentation based on treesitter
		},
		context_commentstring = {
			-- determines the type of comment to use in files with
			-- multiple languages (like JSX, Vue)
			enable = true,
		},
	},
}
