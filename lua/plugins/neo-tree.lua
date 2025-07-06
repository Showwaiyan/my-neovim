return {
  --neo tree
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- Optional: "3rd/image.nvim",
  },
  lazy = false,
  opts = {
    -- Add any Neo-tree specific configuration here
  },
  config = function()
    --NeoTree
    vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal right<CR>", {})
  end,
}
