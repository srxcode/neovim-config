vim.opt.number = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.swapfile = false
vim.opt.termguicolors = true

require("config.keymaps")
require("config.lazy")
require("config.alpha")
require("config.lsp")

vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])
