return {
  "VonHeikemen/fine-cmdline.nvim",
  dependencies = {
    { "MunifTanjim/nui.nvim" },
  },
  config = function()
    require("fine-cmdline").setup({
      cmdline = {
        enable_keymaps = true,
        smart_history = true,
        prompt = "Command: ",
      },
      popup = {
        position = {
          row = "95%",
          col = "0%",
        },
        size = {
          width = "100%",
        },
        border = {
          style = "rounded",
        },
        win_options = {
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
    })
    vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
  end,
}
