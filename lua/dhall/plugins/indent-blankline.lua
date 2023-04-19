-- This gives indentation indicators
return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("indent_blankline").setup({
			char = "▏",
			filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
			show_trailing_blankline_indent = true,
			-- highlights the current indentation level to make it easier to see
			show_current_context = true,
		})
	end,
}
