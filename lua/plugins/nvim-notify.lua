return {
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
      require("notify").setup({
        background_colour = "#000000", -- optional
        stages = "fade_in_slide_out",
        timeout = 2000,
      })
    end,
  },
}
