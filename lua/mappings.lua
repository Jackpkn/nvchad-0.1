require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local M = {}

M.general = {
  n = {
    -- Your normal mode mappings
  },
  i = {
    -- Your insert mode mappings
  },
  v = {
    -- Your visual mode mappings
  },
}

return M
