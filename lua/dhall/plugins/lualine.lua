-- A nicely improved status line, and top bar too
return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		-- show current code contexts,
		"SmiteshP/nvim-navic",
	},
	opts = {
		options = {
			-- theme = "tokyonight",
      theme = "catppuccin-mocha",
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
			disabled_filetypes = {
				statusline = { "NvimTree" },
				winbar = { "NvimTree" },
			},
		},
		sections = {
			lualine_c = {
				"searchcount",
				"selectioncount",
			},
		},
		winbar = {
			lualine_a = {
				"filename",
			},
			lualine_c = {
				{
					function()
						return require("nvim-navic").get_location()
					end,
					cond = function()
						local ok, nvim_navic = pcall(require, "nvim-navic")
						return ok and nvim_navic.is_available()
					end,
				},
			},
			lualine_z = {
				{
					"filesize",
					fmt = function(s)
						return "File size: " .. s
					end,
				},
			},
		},
	},
}
