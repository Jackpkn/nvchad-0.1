local autocmd = vim.api.nvim_create_autocmd

-- Force italic support
autocmd("UIEnter", {
  callback = function()
    vim.api.nvim_set_option("termguicolors", true)
    vim.cmd([[highlight Comment gui=italic cterm=italic]])
    vim.cmd([[highlight TSComment gui=italic cterm=italic]])
    vim.cmd([[highlight TSFunction gui=italic cterm=italic]])
    vim.cmd([[highlight TSKeyword gui=italic cterm=italic]])
  end,
}) 