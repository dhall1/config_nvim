vim.g.mapleader = " "
vim.g.localmapleader = " "

-- use spaces instead of tabs
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.opt.signcolumn = "yes"
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false

-- Links the vim and system clipboards
-- Need to install xsel or xclip for this to work
vim.opt.clipboard = "unnamedplus"

-- Set completeopt to have a better completion experience
vim.opt.completeopt = "menu,menuone,noselect"

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

require("dhall.plugin-setup")
require("dhall.keymap")

--vim.cmd.colorscheme("tokyonight-storm")
vim.cmd.colorscheme("catppuccin-mocha")
