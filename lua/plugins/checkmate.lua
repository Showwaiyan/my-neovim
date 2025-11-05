return {
  "bngarren/checkmate.nvim",
  ft = "markdown",       -- Lazy loads for Markdown files matching patterns in 'files'
  opts = {
    files = { "TODO.md" }, -- any .md file (instead of defaults)
    todo_states = {
      -- Built-in states (cannot change markdown or type)
      unchecked = { marker = "□" },
      checked = { marker = "✔" },

      -- Custom states
      in_progress = {
        marker = "◐",
        markdown = ".",  -- Saved as `- [.]`
        type = "incomplete", -- Counts as "not done"
        order = 50,
      },
      cancelled = {
        marker = "✗",
        markdown = "c", -- Saved as `- [c]`
        type = "complete", -- Counts as "done"
        order = 2,
      },
      on_hold = {
        marker = "⏸",
        markdown = "/", -- Saved as `- [/]`
        type = "inactive", -- Ignored in counts
        order = 100,
      },
    },
  },
}
