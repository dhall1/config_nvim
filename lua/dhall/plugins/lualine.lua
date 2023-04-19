return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			theme = "tokyonight",
			section_separators = { left = "", right = "" },
			disabled_filetypes = { "NvimTree" },
		},
	},
}
