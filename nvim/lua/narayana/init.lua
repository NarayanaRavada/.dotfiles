require("narayana.remap")
require("narayana.set")
require("narayana.luasnip")

require('lualine').setup {
  options = {
    section_separators = {left = "", right = ""},
    globalstatus = true,
  },
  sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
  },
}

require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
