vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

require("nvim-tree").setup({
	on_attach = function(bufnr)
		local api = require("nvim-tree.api")

		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end

		api.map.on_attach.default(bufnr)

		vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	end,
})

vim.keymap.set("n", "<C-b>", require("nvim-tree.api").tree.toggle)
