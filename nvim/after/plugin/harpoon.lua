local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- <leader>a does is to save the files in a list so that you can go back much faster.
vim.keymap.set("n", "<leader>a", mark.add_file)
-- CTRL + e is to open the history or list all the files you save or it is a way to navigate your files or recent files
-- you visited.
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- This CTRL + h/t/n/s is a way to navigate much faster rather than opening CTRL + e
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
