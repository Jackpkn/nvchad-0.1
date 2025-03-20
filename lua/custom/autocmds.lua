
-- Force italic support
local autocmd = vim.api.nvim_create_autocmd

-- Autoformat JavaScript, TypeScript, JSON files using Prettier
autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json" },
  callback = function()
    vim.system({ "prettier", "--write", vim.fn.expand("%") }, { text = true })
    vim.cmd("edit") -- Reload buffer after formatting
  end,
})

-- Force italic support
autocmd("UIEnter", {
  callback = function()
    vim.cmd([[highlight Comment gui=italic cterm=italic]])
    vim.cmd([[highlight TSComment gui=italic cterm=italic]])
    vim.cmd([[highlight TSFunction gui=italic cterm=italic]])
    vim.cmd([[highlight TSKeyword gui=italic cterm=italic]])
  end,
})
