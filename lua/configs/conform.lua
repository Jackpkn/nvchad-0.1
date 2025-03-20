local conform = require("conform")

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    svelte = { "prettier" },
    vue = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
  },

  -- Format on save configuration
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },

  -- Custom formatters configuration
  formatters = {
    prettier = {
      command = "prettier",
      args = {
        "--config-precedence",
        "prefer-file",
        "--stdin-filepath",
        vim.api.nvim_buf_get_name(0),
      },
      stdin = true,
    },
  },
}

return options
