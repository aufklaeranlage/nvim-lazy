local global = vim.g
local o = vim.opt

global.mapleader = " "

-- Editor options

o.nu = true
o.rnu = true
o.autoindent = true
o.colorcolumn = "80"
o.expandtab = false
o.shiftwidth = 4
o.tabstop = 4
o.scrolloff = 8
o.sidescrolloff = 8
o.encoding = "UTF-8"
o.splitright = true
o.splitbelow = true
o.syntax = "on"
o.title = true
o.wrap = false
o.filetype = on

-- 
o.swapfile = false
o.backup = false
o.undofile = true

-- Buffers
o.hidden = true

-- Recognize unusual filetypes
vim.filetype.add({
	extension = {
		tpp = "cpp",
		h = "c",
	},
})
