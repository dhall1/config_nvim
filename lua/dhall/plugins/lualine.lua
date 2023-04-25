return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			theme = "tokyonight",
			section_separators = { left = "", right = "" },
			disabled_filetypes = {
				statusline = { "NvimTree" },
				winbar = { "NvimTree" },
			},
		},
		winbar = {
			lualine_b = {
				"filename",
			},
			lualine_c = {
				{
					function()
						return require("nvim-navic").get_location()
					end,
					cond = function()
						return require("nvim-navic").is_available()
					end,
				},
			},
		},
	},
}
