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
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "scss",
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
parser_config.tsx.used_by = { "javascript", "typescript.tsx","javascriptreact", "jsx", "javascript.jsx"}
--parser_config.javascript.used_by = {"javascriptreact", "jsx", "javascript.jsx"}