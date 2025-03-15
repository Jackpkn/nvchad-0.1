local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Enable snippet support
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "gopls", "gradle_ls", "tailwindcss", "prismals" }

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

-- Enhanced HTML/CSS settings
local enhanced_capabilities = vim.tbl_deep_extend("force", capabilities, {
  textDocument = {
    completion = {
      completionItem = {
        snippetSupport = true
      }
    }
  }
})

for _, lsp in ipairs(servers) do
  local config = {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      -- HTML specific settings
      html = {
        format = {
          templating = true,
          wrapLineLength = 120,
          wrapAttributes = 'auto',
        },
        hover = {
          documentation = true,
          references = true,
        },
      },
      -- CSS specific settings
      css = {
        lint = {
          compatibleVendorPrefixes = "warning",
          vendorPrefix = "warning",
          duplicateProperties = "warning",
        },
        validate = true,
        completion = {
          completePropertyWithSemicolon = true,
        },
      },
    },
  }

  -- Add TypeScript specific settings
  if lsp == "tsserver" then
    config.commands = {
      OrganizeImports = {
        organize_imports,
        description = "Organize Imports",
      },
    }
  end

  lspconfig[lsp].setup(config)
end
