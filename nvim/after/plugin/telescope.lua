local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fl', builtin.find_files, {})
vim.keymap.set('n', '<leader>lg', builtin.find_files, {})
vim.keymap.set('n', '<leader>ls', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
