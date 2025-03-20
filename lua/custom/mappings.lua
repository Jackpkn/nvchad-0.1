local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = { "<cmd>w<CR>", "save file" },
    ["\\"] = { "<cmd>:vsplit<CR>", "vertical split" },

    -- Tmux navigation
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "window left" },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", "window right" },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", "window down" },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", "window up" },

    -- Trouble
    ["<leader>qx"] = { "<cmd>TroubleToggle<CR>", "toggle trouble" },
    ["<leader>qw"] = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "workspace diagnostics" },
    ["<leader>qd"] = { "<cmd>TroubleToggle document_diagnostics<CR>", "document diagnostics" },

    -- Tests
    ["<leader>tt"] = {
      function()
        require("neotest").run.run()
      end,
      "run nearest test"
    },

    -- Debug
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "toggle breakpoint",
    },

    -- Terminal mappings
    ["<A-i>"] = { -- Alt + i
      function()
        require("nvchad.term").toggle({ pos = "float" })
      end,
      "Toggle floating term",
    },

    ["<A-h>"] = { -- Alt + h
      function()
        require("nvchad.term").toggle({ pos = "horizontal" })
      end,
      "Toggle horizontal term",
    },

    ["<A-v>"] = { -- Alt + v
      function()
        require("nvchad.term").toggle({ pos = "vertical" })
      end,
      "Toggle vertical term",
    },

    -- Toggle auto-save
    ["<leader>ta"] = {
      function()
        require("auto-save").toggle()
        local status = require("auto-save").state.enabled and "enabled" or "disabled"
        vim.notify("AutoSave: " .. status, vim.log.levels.INFO)
      end,
      "Toggle auto-save",
    },

    ["<leader>h"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show hover documentation" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode" },
    ["kj"] = { "<ESC>", "escape insert mode" },
  },

  v = {
    ["<leader>y"] = { '"+y', "yank to system clipboard" },
  },

  t = {
    -- Terminal mode mappings (when in terminal)
    ["<A-i>"] = { -- Alt + i
      function()
        require("nvchad.term").toggle({ pos = "float" })
      end,
      "Toggle floating term",
    },

    ["<A-h>"] = { -- Alt + h
      function()
        require("nvchad.term").toggle({ pos = "horizontal" })
      end,
      "Toggle horizontal term",
    },

    ["<A-v>"] = { -- Alt + v
      function()
        require("nvchad.term").toggle({ pos = "vertical" })
      end,
      "Toggle vertical term",
    },

    -- Easy escape from terminal
    ["<C-x>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
  },
}

return M
