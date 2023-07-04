local builtin = require('telescope.builtin')
-- <leader>pf does is to find files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- git commands when you are integrating with gits it will help you to track all the unmark/unsaved files in 
-- github
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- <leader>ps does is to find a words in different files.
vim.keymap.set('n', '<leader>ps', function()

	builtin.grep_string({ search = vim.fn.input('Grep > ')})

end)

