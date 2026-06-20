vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- local telescope= require('telescope.builtin')

-- general
vim.keymap.set('n', '<leader>cn', ':Notifications<CR>')
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { desc = 'File tree' })
vim.keymap.set('n', '<C-s>', ':wa!<CR>', { desc = 'write all file' })
vim.keymap.set('n', '<C-q>', ':q!<CR>', { desc = 'Quits neovim' })
vim.keymap.set('n', '<leader>qt', ':q!<CR>', { desc = 'Quits neovim' })
vim.keymap.set('n', '<leader>rel', ':source %<CR>', { desc = 'Reloads current changes' })
vim.keymap.set('n', '<leader>kb', ':bd!<CR>', { desc = 'closes current buffer' })
vim.keymap.set('n', '<leader>cc', ':', { desc = 'opens cmd prompt' })
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exits insert mode' })

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Searches for file' })
vim.keymap.set('n', '<leader>sf', ':Telescope live_grep<CR>', { desc = 'live grep' })
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Telescope buffers' })

-- vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>sf', telescope.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })

vim.keymap.set('n', '<leader>sfcw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>scf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

-- bufferline
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')

vim.keymap.set('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>')

-- lsp stuff
vim.keymap.set('n', '<leader>c', '<cmd>Telescope lsp_implementations<CR>') -- check implementation
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)  -- code actions
vim.keymap.set('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>')     -- go to definition
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float) -- show line diagnostics

-- linting
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)

-- clipboard
vim.keymap.set('v', '<C-c>', '"+y', { desc = 'Copy to system clipboard' })
vim.keymap.set('i', '<C-v>', '<Esc>"+pa', { desc = 'Paste from system clipboard' })
