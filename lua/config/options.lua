-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.vscode = true

if vim.g.started_by_firenvim then
  vim.opt.laststatus = 0
end
