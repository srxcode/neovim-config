vim.lsp.enable("lua_ls")
vim.lsp.enable("svelte")
vim.lsp.enable("clangd")
vim.lsp.enable("ts_ls")

local severity = vim.diagnostic.severity

vim.diagnostic.config({
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.HINT] = "󰠠 ",
      [severity.INFO] = " ",
    },
  },
})


-- treesitter
require('nvim-treesitter').install { 'svelte', 'typescript', 'javascript','html','css','cpp','c'}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'svelte', 'typescript', 'javascript', 'html', 'css','cpp','c' },
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
