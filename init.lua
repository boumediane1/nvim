require("config.remap")
require("config.set")

local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

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
})

require("tokyonight").setup({
	transparent = true,
	styles = {
		sidebars = "transparent",
	},
})

vim.cmd("colorscheme tokyonight")

require("nvim-tree").setup()

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
