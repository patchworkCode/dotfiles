nnoremap <Tab> :BufferLineCycleNext<CR>
nnoremap <S-Tab>b] :BufferLineCyclePrev<CR>

lua << EOF
require("bufferline").setup{
  options = {
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " )
        s = s .. n .. sym
      end
      return s
    end,
    separator_style = "slant"
  }
}
EOF
