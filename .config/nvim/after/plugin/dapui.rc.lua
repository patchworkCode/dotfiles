require("dapui").setup()



vim.api.nvim_set_keymap('n', '<leader>dui', '<cmd>lua require"dapui".toggle()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>',{ noremap = true })
vim.api.nvim_set_keymap('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>dhv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>',{ noremap = true })

