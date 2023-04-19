return {
	"simrat39/rust-tools.nvim",
	config = function()
		vim.g.rust_recommended_style = false
		local rt = require("rust-tools")
		rt.setup({
			server = {
				on_attach = require("dhall.on_attach"),
			},
		})
	end,
}
