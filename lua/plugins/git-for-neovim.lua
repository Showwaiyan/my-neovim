return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      local gc = require("git-conflict")
      gc.setup({
        default_mappings = true,     -- enable default buffer local mappings
        default_commands = true,     -- enable commands created by this plugin
        disable_diagnostics = false, -- keep diagnostics on during conflict
        list_opener = "copen",       -- how to open quickfix list with conflicts
        highlights = {
          incoming = "DiffAdd",      -- highlight group for incoming changes
          current = "DiffText",      -- highlight group for current changes
        },
      })
      -- Auto-command: when a conflict is detected
      vim.api.nvim_create_autocmd("User", {
        pattern = "GitConflictDetected",
        callback = function()
          vim.notify("⚠️ Conflict detected in " .. vim.fn.expand("<afile>"))

          -- Add custom keymap only for conflicted buffers
          vim.keymap.set("n", "cww", function()
            gc.conflict_buster()              -- start conflict resolution mode
            gc.create_buffer_local_mappings() -- add conflict keymaps
          end, { buffer = true })
        end,
      })
    end,
  },
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("diffview").setup()
      vim.keymap.set("n", "<leader>go", "<cmd>DiffviewOpen<CR>", { desc = "[D]iffview [O]pen" })
      vim.keymap.set("n", "<leader>gf", "<cmd>DiffviewFocusFiles<CR>", { desc = "[D]iffview [F]ocus Files" })
      vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewClose<CR>", { desc = "[D]iffview [C]lose" })
    end,
  },
}
