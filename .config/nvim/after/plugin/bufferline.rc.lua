--[[local function diagnostics_indicator(_, _, diagnostics)
  local symbols = {error = ' ', warning = ' ', info = ' '}
  local result = {}
  for name, count in pairs(diagnostics) do
    if symbols[name] and count > 0 then
      table.insert(result, symbols[name] .. count)
    end
  end
  result = table.concat(result, ' ')
  return #result > 0 and result or ''
end

require('bufferline').setup {
  options = {
    separator_style = 'slant',
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = diagnostics_indicator,
    diagnostics_update_in_insert = false
  }
}

vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>1', ':BufferLineGoToBuffer 1<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>2', ':BufferLineGoToBuffer 2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>3', ':BufferLineGoToBuffer 3<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>4', ':BufferLineGoToBuffer 4<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>5', ':BufferLineGoToBuffer 5<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>6', ':BufferLineGoToBuffer 6<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>7', ':BufferLineGoToBuffer 7<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>8', ':BufferLineGoToBuffer 8<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>9', ':BufferLineGoToBuffer 9<CR>', {noremap = true}) 
--]]
