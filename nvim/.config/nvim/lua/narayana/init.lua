require("narayana.remap")
require("narayana.set")

require('lualine').setup {
    options = {
        globalstatus = true,
        component_separators = '|',
        section_separators = '',
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diagnostics' },
        lualine_c = {
            {
                'filename',
                path = 1
            }
        },
        lualine_x = { 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}


require('telescope').setup { defaults = { file_ignore_patterns = { "node_modules" } } }
