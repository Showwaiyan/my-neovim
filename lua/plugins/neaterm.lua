return {
  "Dan7h3x/neaterm.nvim",
  branch = "stable",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("neaterm").setup({
      shell = vim.o.shell,
      float_width = 0.8,
      float_height = 0.8,
      move_amount = 3,
      resize_amount = 2,
      keymaps = {
        -- Customize keymaps here
        toggle = "<leader>tt",
        move_up = '<C-A-Up>',
      },
      -- Appearance
      highlights = {
        normal = "Normal",
        border = "FloatBorder",
        title = "Title",
      },
    })
  end,
}
