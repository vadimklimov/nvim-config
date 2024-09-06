vim.cmd.colorscheme "catppuccin-mocha"

local colors = require("catppuccin.palettes").get_palette("mocha")

local highlight_groups = {
  TelescopeMatching = { fg = colors.maroon },

  TelescopePromptTitle = { fg = colors.mantle, bg = colors.sapphire },
  TelescopePromptBorder = { fg = colors.sapphire },
  TelescopePromptPrefix = { fg = colors.sapphire },
  TelescopePromptNormal = { fg = colors.blue },

  TelescopeResultsTitle = { fg = colors.mantle, bg = colors.teal },
  TelescopeResultsBorder = { fg = colors.teal },

  TelescopePreviewTitle = { fg = colors.mantle, bg = colors.mauve },
  TelescopePreviewBorder = { fg = colors.mauve },

  NoiceCmdlinePopupTitle = { fg = colors.sapphire },
  NoiceCmdlinePopupBorder = { fg = colors.sapphire },
  NoiceCmdlinePopupBorderCmdline = { fg = colors.sapphire },

  NoiceCmdlinePopupTitleSearch = { fg = colors.mauve },
  NoiceCmdlinePopupBorderSearch = { fg = colors.mauve },
  NoiceCmdlineIconSearch = { fg = colors.mauve },

  NeoTreeFloatTitle = { fg = colors.blue },
  NeoTreeFloatBorder = { fg = colors.blue },

  SpectreBody = { fg = colors.mauve },
  SpectreFile = { fg = colors.lavender },
  SpectreSearch = { fg = colors.mantle, bg = colors.sapphire },
  SpectreReplace = { fg = colors.mantle, bg = colors.teal },

  MiniCursorword = { bg = colors.surface0 },
  MiniCursorwordCurrent = { bg = colors.surface0 },

  NotifyINFOTitle = { fg = colors.green },
  NotifyINFOBorder = { fg = colors.green },
  NotifyINFOIcon = { fg = colors.green },

  NotifyWARNTitle = { fg = colors.yellow },
  NotifyWARNBorder = { fg = colors.yellow },
  NotifyWARNIcon = { fg = colors.yellow },

  NotifyERRORTitle = { fg = colors.red },
  NotifyERRORBorder = { fg = colors.red },
  NotifyERRORIcon = { fg = colors.red },

  NotifyTRACETitle = { fg = colors.mauve },
  NotifyTRACEBorder = { fg = colors.mauve },
  NotifyTRACEIcon = { fg = colors.mauve },

  NotifyDEBUGTitle = { fg = colors.lavender },
  NotifyDEBUGBorder = { fg = colors.lavender },
  NotifyDEBUGIcon = { fg = colors.lavender },
}

for name, value in pairs(highlight_groups) do
  vim.api.nvim_set_hl(0, name, value)
end
