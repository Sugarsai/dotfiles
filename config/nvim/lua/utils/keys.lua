vim.keymap.set("n", "<leader>bd", ":bd<CR>")

-- Save buffer by Ctrl + S
vim.keymap.set('n', '<C-s>', ':w <CR>', { desc = "Save by Ctrl + s" })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>i', { desc = "Save by Ctrl + s in insert mode" })

-- Select all
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = "Select All" })

-- Root save
vim.keymap.set('n', '<leader>rootsave', ':w !sudo tee %', { desc = "Save file as a super user (root)" })

-- Key mappings for copying (yanking) and cutting (deleting)
vim.keymap.set('n', '<C-c>', '"+y')   -- Copy to system clipboard in normal mode
vim.keymap.set('v', '<C-c>', '"+y')   -- Copy to system clipboard in visual mode
vim.keymap.set('n', '<C-x>', '"+d')   -- Cut to system clipboard in normal mode
vim.keymap.set('v', '<C-x>', '"+d')   -- Cut to system clipboard in visual mode

-- Key mapping for pasting from the system clipboard
vim.keymap.set('n', '<C-v>', '"+p')   -- Paste from system clipboard in normal mode
vim.keymap.set('v', '<C-v>', '"+p')   -- Paste from system clipboard in visual mode

-- Change word all over the buffer
vim.keymap.set("n", "<leader>cw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "Search and Replace word" })

-- Shift + Up to extend selection upwards
vim.api.nvim_set_keymap('n', '<S-Up>', 'Vk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Up>', 'k', { noremap = true, silent = true })

-- Shift + Down to extend selection downwards
vim.api.nvim_set_keymap('n', '<S-Down>', 'Vj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Down>', 'j', { noremap = true, silent = true })
