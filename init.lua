-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

-- General settings
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.number = true -- Show the absolute line number on the current line
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart indenting
vim.opt.termguicolors = true -- Enable true colors
vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard

-- Setup lazy.nvim
vim.opt.rtp:prepend(lazypath)
require("vim-options")
require("lazy").setup("plugins", {
	install = { colorscheme = { "habamax" } },
	checker = { enabled = true },
})

-- Disable auto-commenting on newline
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
})
