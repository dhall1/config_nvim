return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({})
		telescope.load_extension("fzf")
	end,
	keys = {
		{
			-- search all files
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find Files",
		},
		{
			-- search through all files
			"<leader>/",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Grep Files",
		},
		{
			-- list all buffers
			"<leader>ls",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Buffers",
		},
		{
			-- search through vim's help
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Help Tags",
		},
	},
	lazy = true,
}
