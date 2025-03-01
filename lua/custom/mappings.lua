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
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode" },
    ["kj"] = { "<ESC>", "escape insert mode" },
  },

  v = {
    ["<leader>y"] = { '"+y', "yank to system clipboard" },
  },
}

return M 