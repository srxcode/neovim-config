vim.lsp.enable("lua_ls")
vim.lsp.enable("svelte")

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
require('nvim-treesitter').install { 'svelte', 'typescript', 'javascript','html','css'}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'svelte', 'typescript', 'javascript', 'html', 'css' },
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
