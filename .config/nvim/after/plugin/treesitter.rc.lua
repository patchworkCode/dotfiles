require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "json",
    "yaml",
    "html",
    "javascript",
    "python",
    "rust",
    "latex"
  },
  autotag = {
    enable = true,
    disable = {},
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx","javascriptreact", "jsx", "javascript.jsx"}
--parser_config.javascript.used_by = {"javascriptreact", "jsx", "javascript.jsx"}
