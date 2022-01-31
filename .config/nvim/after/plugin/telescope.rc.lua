function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

vim.api.nvim_set_keymap(
  "n",
  ";f",
  "<cmd>lua require('telescope.builtin').find_files()<cr>",
  { noremap = true }
)

vim.api.nvim_set_keymap(
  "n",
  ";r",
  "<cmd>lua require('telescope.builtin').live_grep()<cr>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "\\",
  "<cmd>Telescope buffers<cr>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  ";;",
  "<cmd>Telescope help_tags<cr>",
  { noremap = true }
)
require("telescope").load_extension "file_browser"
vim.api.nvim_set_keymap(
  "n",
  ";b",
  "<cmd>Telescope file_browser<cr>",
  { noremap = true }
)
