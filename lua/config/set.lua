vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4 -- how many columns a tab should be made up of in the editor view
vim.opt.shiftwidth = 2 -- how many columns text will be indented when using indent operations
-- vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- vim.opt.autoindent = true
-- vim.opt.smartindent = true

vim.opt.hlsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.splitright = true

vim.g.mapleader = " "

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.spell = true
vim.opt.spelllang = { "en_us", "fr" }
vim.updatetime = 50
vim.opt.wrap = true
vim.cmd("highlight clear Underlined")

vim.timeoutlen = 1000
vim.ttimeoutlen = 0
