local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fl', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ls', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require('telescope').load_extension('fzf')

-- make borders transparent

vim.api.nvim_set_hl(0, "TelescopeBorder", {bg = "none"})
vim.api.nvim_set_hl(0, "TelescopeNormal", {bg = "none"})
