return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true
		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			filters = {
				dotfiles = false,
			},
			-- this needs to go last for some reason. Should probably look that up
			renderer = {
				group_empty = true,
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
		})
	end,
	lazy = false,
	keys = {
		{
			"<leader>pv",
			vim.cmd.NvimTreeToggle,
			desc = "[P]roject [V]iew",
		},
		{
			"<leader>pf",
			vim.cmd.NvimTreeFocus,
			desc = "[P]roject [F]ocus",
		},
	},
}
