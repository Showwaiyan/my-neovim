return {
  "ray-x/web-tools.nvim",
  ft = { "html", "htmldjango", "javascript", "typescript", "vue", "svelte" },
  config = function()
    require("web-tools").setup({
      keymaps = {
        rename = nil, -- disable rename
        repeat_rename = ".",
      },
      hurl = {            -- hurl default
        show_headers = false, -- do not show http headers
        floating = false, -- use floating windows (need guihua.lua)
        json5 = false,    -- use json5 parser require json5 treesitter
        formatters = {    -- format the result by filetype
          json = { "jq" },
          html = { "prettier", "--parser", "html" },
        },
      },
    })
  end,
}
