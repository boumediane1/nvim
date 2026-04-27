vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = "v1" },
})
--
require("blink.cmp").setup({
	keymap = {
		preset = "enter",
	},
	signature = { enabled = true },
	completion = {
		documentation = { auto_show = true },
		menu = {
			auto_show = true,
		},
	},
})
