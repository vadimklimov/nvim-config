return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  config = function()
    local wk = require("which-key")

    wk.setup({
      delay = 1000,
      icons = {
        rules = false,
        breadcrumb = "󰄾",
        separator = "",
        group = "",
      },
    })

    wk.add({
      { "<leader>f",  group = "Find tools" },
      { "<leader>fg", group = "Git find tools" },
      { "<leader>s",  group = "Find/replace tools" },
      { "<leader>b",  group = "Buffer management" },
      { "<leader>q",  group = "Session management" },
      { "<leader>c",  group = "Code tools" },
      { "<leader>e",  group = "File explorer" },
      { "<leader>t",  group = "Terminal tools" },
      { "<leader>tf", group = "FlashPipe" },
      { "<leader>tl", group = "CPILint" },
      { "<leader>x",  group = "Others" },
    })
  end,
}
