require("lint").linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },
}

-- Create autocommands for real-time linting
vim.api.nvim_create_autocmd({ 
  "BufWritePost",
  "BufEnter", 
  "InsertLeave", 
  "TextChanged",
  "InsertChange",  -- Add this for real-time insert mode updates
}, {
  callback = function()
    require("lint").try_lint()
  end,
})

-- Add event for insert mode changes (real-time)
vim.api.nvim_create_autocmd({ "InsertChange", "TextChangedI" }, {
  callback = function()
    vim.defer_fn(function()
      require("lint").try_lint()
    end, 200)  -- Increase delay to 200ms
  end,
})

