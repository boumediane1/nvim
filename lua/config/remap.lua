vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set('n', 'n', 'nzzzv')
-- vim.keymap.set('n', 'N', 'Nzzzv')

-- greatest remap ever
vim.keymap.set("x", "<leader>p", '"_dp')
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')
-- vim.keymap.set('v', '<leader>d', '"_d')

vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

vim.keymap.set({ "n" }, "<leader>k", function()
	require("lsp_signature").toggle_float_win()
end, { silent = true, noremap = true, desc = "toggle signature" })

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-i>", "<C-i>zz")

vim.keymap.set("n", "p", "p==")
