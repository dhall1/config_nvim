return {
	"akinsho/bufferline.nvim",
	version = "v3.*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			numbers = "ordinal",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(_, _, diagnostics_dict, context)
				-- Skip this current buffer because it'll be shown in the lualine status
				if context.buffer:current() then
					return ""
				end
				local s = " "
				for e, n in pairs(diagnostics_dict) do
					local sym = e == "error" and " " or (e == "warning" and " " or "")
					s = s .. n .. sym
				end
				return s
			end,
			separator_style = "slant",
			offsets = {
				{
					filetype = "NvimTree",
				},
			},
		},
	},
}