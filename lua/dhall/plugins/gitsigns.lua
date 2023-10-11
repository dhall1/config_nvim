-- Mostly just doing this one to have git blames at the end of lines.
return {
	"lewis6991/gitsigns.nvim",
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
			delay = 300,
			ignore_whitespace = false,
		},
	},
}
