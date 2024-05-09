-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.tsx", "*.ts", "*.js", "*.jsx" },
  callback = function(event)
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.px3" },
  callback = function(event)
    vim.opt_local.ft = "csv"
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.prince" },
  callback = function(event)
    vim.opt_local.ft = "jinja"
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*.prince" },
  callback = function(event)
    vim.opt_local.ts = 2
    vim.opt_local.sts = 2
    vim.opt_local.sw = 2
    vim.opt_local.expandtab = true
  end,
})
