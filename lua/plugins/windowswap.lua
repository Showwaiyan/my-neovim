return {
  "yorickpeterse/nvim-window",
  config = function()
    require("nvim-window").setup({
      chars = { "a", "s", "d", "f", "j", "k", "l", ";" },
      normal_hl = "Normal",
      hint_hl = "Bold",
      border = "single",
    })

    vim.keymap.set("n", "<leader>w", function()
      require("nvim-window").pick()
    end, { desc = "Pick a window" })
  end,
  keys = {
    { "<leader>w", mode = "n" },
  },
}
