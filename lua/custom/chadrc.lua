---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },
  
  transparency = false,
  
  hl_override = {
    -- Your existing highlight overrides...
  },

  telescope = { style = "bordered" },
  nvdash = {
    load_on_startup = true,
    header = {
      -- Your existing header...
    },
  },
  
  statusline = {
    theme = "default",
    separator_style = "default",
    overriden_modules = nil,
  },
}

-- The correct path is now just "custom.mappings"
M.mappings = require "custom.mappings"

M.plugins = "custom.plugins"

M.lazy_nvim = {
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}

return M
