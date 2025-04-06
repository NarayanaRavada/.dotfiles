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


require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
        winblend = 0,
        path_display = { "truncate" },
        color_devicons = true,
        --border = {},
        --borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        set_env = { ["COLORTERM"] = "truecolor" },
        sorter = require('telescope.sorters').get_fuzzy_file,
        file_ignore_patterns = { "node_modules" }
    }
}
