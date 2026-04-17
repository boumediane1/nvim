local M = {}

function M.setup()
	vim.pack.add({
		{ src = "https://github.com/neovim/nvim-lspconfig" },
		{ src = "https://github.com/mason-org/mason.nvim" },
		{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
		{ src = "https://github.com/stevearc/conform.nvim" },
		{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
		{ src = "https://github.com/folke/tokyonight.nvim" },
		{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
		{ src = "https://github.com/mg979/vim-visual-multi" },
		{ src = "https://github.com/nvim-lua/plenary.nvim" },
		{ src = "https://github.com/neogitorg/neogit" },
		{ src = "https://github.com/christoomey/vim-tmux-navigator" },
	})

	require("tokyonight").setup({
		transparent = true,
		styles = {
			sidebars = "transparent",
		},
	})

	vim.cmd("colorscheme tokyonight")

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

	require("mason").setup()

	require("mason-lspconfig").setup({
		ensure_installed = { "pyright", "lua_ls", "stylua", "tsgo" },
	})

	require("mason-tool-installer").setup({
		ensure_installed = { "prettierd" },
	})

	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			typescript = { "prettierd" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	})
end

return M
