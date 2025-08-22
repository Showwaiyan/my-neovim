return {
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_enabled = 0
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main", -- or "canary" if you want bleeding edge
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    build = "make tiktoken", -- optional, improves token tracking
    cmd = "CopilotChat",   -- loads on demand
    opts = {
      window = {
        layout = "float",
        width = 150,
        height = 30,
        border = "rounded",
        title = "🤖 AI Assistant",
        zindex = 100,
      },
      headers = {
        user = "👤 You: ",
        assistant = "🤖 Copilot: ",
        tool = "🔧 Tool: ",
      },
      separator = "━━",
      show_folds = false,
    },
    config = function(_, opts)
      local chat = require("CopilotChat")
      vim.g.copilot_no_tab_map = true
      vim.keymap.set("i", "<S-Tab>", 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })
      chat.setup(opts)
    end,
    keys = {
      { "<leader>ccv", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat", mode = { "n", "v" } },
      { "<leader>cci", "<cmd>CopilotChat<cr>",       desc = "Start Copilot Chat" },
    },
  },
}
