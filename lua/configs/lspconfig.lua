local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Enable snippet support
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Enable hover support
capabilities.textDocument.hover = {
  contentFormat = { "markdown", "plaintext" }, -- Specify the format of the hover content
}

local lspconfig = require "lspconfig"

-- List of language servers to configure
local servers = { "html", "cssls", "ts_ls", "clangd", "gopls", "gradle_ls", "tailwindcss", "prismals" }

for _, lsp in ipairs(servers) do
  local config = {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      -- Add any specific settings for your LSP servers here
    },
  }

  lspconfig[lsp].setup(config)
end
