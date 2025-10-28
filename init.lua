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


-- Setup lazy.nvim
vim.opt.rtp:prepend(lazypath)
require("vim-options")
require("lazy").setup("plugins", {
	install = { colorscheme = { "habamax" } },
	checker = { enabled = true },
})
vim.api.nvim_set_keymap('n', '<leader>p', ':lua require("utils").bootstrap_project()<CR>', { noremap = true, silent = true })

vim.notify = require("notify")

-- Disable auto-commenting on newline
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
})
