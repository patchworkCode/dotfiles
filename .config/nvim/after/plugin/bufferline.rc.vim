nnoremap <Tab> :BufferLineCycleNext<CR>
nnoremap <S-Tab> :BufferLineCyclePrev<CR>

lua << EOF
local function diagnostics_indicator(_, _, diagnostics)
  local symbols = {error = ' ', warn = ' ', hint = ' ', info = ' '}
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
EOF
