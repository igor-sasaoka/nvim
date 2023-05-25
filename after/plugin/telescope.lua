-- Remaps for Telescope Fuzzy Find
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- All files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})       -- Git files only
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


