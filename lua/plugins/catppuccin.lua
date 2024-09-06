return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    integrations = {
      telescope = { enabled = true },
      mason = true,
      treesitter = true,
      neotree = false,
      noice = true,
      -- notify = true,
      mini = { enabled = true },
      which_key = true,
    },
  },
}
