local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },
  },

  -- Enable format-on-save
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
    async = false,  -- This ensures formatting is done before saving
  },

  -- Customize formatters
  formatters = {
    prettier = {
      -- Make prettier use local config files
      prepend_args = { 
        "--config-precedence", "prefer-file",
        "--html-whitespace-sensitivity", "strict",
        "--parser", function(parser)
          if vim.bo.filetype == "html" then
            return "html"
          elseif vim.bo.filetype == "css" then
            return "css"
          end
          return parser
        end
      },
    },
  },
}

return options
