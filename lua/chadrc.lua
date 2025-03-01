---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "rxyhn",
  theme_toggle = { "rxyhn", "one_light" },
  
  transparency = true,
  
  hl_override = {
    -- Comments and documentation
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    ["@comment.documentation"] = { italic = true, bold = true },
    DocKeyword = { italic = true, bold = true },
    
    -- Keywords and operators
    ["@keyword"] = { italic = true, bold = true },
    ["@keyword.function"] = { italic = true, bold = true },
    ["@keyword.operator"] = { bold = true },
    ["@keyword.return"] = { italic = true, bold = true },
    ["@operator"] = { bold = true },
    
    -- Functions and methods
    ["@function"] = { bold = true },
    ["@function.builtin"] = { bold = true, italic = true },
    ["@function.call"] = { bold = true },
    ["@method"] = { bold = true },
    ["@method.call"] = { bold = true },
    
    -- Variables and parameters
    ["@variable"] = { italic = false },
    ["@variable.builtin"] = { italic = true },
    ["@parameter"] = { italic = true },
    
    -- Types and constructors
    ["@type"] = { italic = true },
    ["@type.builtin"] = { italic = true, bold = true },
    ["@constructor"] = { bold = true },
    
    -- Strings and special
    ["@string"] = { italic = true },
    ["@string.special"] = { italic = true, bold = true },
    ["@character.special"] = { italic = true, bold = true },
    
    -- Tags and attributes (HTML/JSX)
    ["@tag"] = { bold = true },
    ["@tag.attribute"] = { italic = true },
    ["@tag.delimiter"] = { bold = true },
    
    -- Properties and fields
    ["@property"] = { italic = true },
    ["@field"] = { italic = true },
    
    -- Constants and numbers
    ["@constant"] = { bold = true },
    ["@constant.builtin"] = { bold = true },
    ["@number"] = { bold = true },
    
    -- Punctuation
    ["@punctuation.delimiter"] = { bold = true },
    ["@punctuation.bracket"] = { bold = false },
    ["@punctuation.special"] = { bold = true },
    
    -- Errors and warnings
    ["@error"] = { undercurl = true, sp = "red" },
    ["@warning"] = { undercurl = true, sp = "yellow" },
    
    -- Diagnostics
    DiagnosticError = { undercurl = true, sp = "red" },
    DiagnosticWarn = { undercurl = true, sp = "yellow" },
    DiagnosticInfo = { undercurl = true, sp = "blue" },
    DiagnosticHint = { undercurl = true, sp = "green" },
  },

  -- Enable telescope border
  telescope = { style = "bordered" },
  
  -- Enable nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
    header = {
      "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ",
      "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
      "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ",
      "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
      "          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
      "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
      "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
      " ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
      " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ",
      "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
      "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    },
  },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    separator_style = "default", -- default/round/block/arrow
    overriden_modules = nil,
  },
}

-- Load custom mappings
M.mappings = require "custom.mappings"

-- Load custom plugins
M.plugins = "custom.plugins"

-- Enable lazy loading
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
