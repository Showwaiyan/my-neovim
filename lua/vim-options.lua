vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("i", "jj", "<Esc>")

-- General settings
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.number = true -- Show the absolute line number on the current line
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart indenting
vim.opt.termguicolors = true -- Enable true colors
vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard
