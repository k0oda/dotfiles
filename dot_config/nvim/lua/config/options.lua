-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options before

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd([[
      aunmenu PopUp.How-to\ disable\ mouse
      aunmenu PopUp.-2-
    ]])
  end,
})
