return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {},
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>/",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Grep Files",
		},
		{
			"<leader>ls",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Help Tags",
		},
	},
	lazy = true,
}
