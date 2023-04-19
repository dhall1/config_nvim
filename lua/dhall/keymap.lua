vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle, { desc = "[P]roject [V]iew" })
vim.keymap.set("n", "<leader>pf", vim.cmd.NvimTreeFocus, { desc = "[P]roject [F]ocus" })

vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete, { desc = "[B]uffer [D]elete" })
vim.keymap.set("n", "<leader>b]", vim.cmd.bnext, { desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>b[", vim.cmd.bprev, { desc = "[B]uffer [P]revious" })
vim.keymap.set("n", "<leader>bc", function()
	vim.cmd.bdelete()
	vim.cmd.buffer()
end, { desc = "[Buffer] [C]lose" })
