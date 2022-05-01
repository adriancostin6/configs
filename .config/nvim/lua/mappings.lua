-- Keymappings related to Lua plugins
-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
vim.keymap.set('n', '<leader>fp', require('telescope.builtin').live_grep)
vim.keymap.set('n', '<leader>ll', require('telescope.builtin').buffers)
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files)

-- Telescope file browser
vim.keymap.set('n', '<leader>e', ':Telescope file_browser path=%:p:h<CR>', { silent = true })
if vim.fn.has('win32') == nil then
    vim.keymap.set('n', '<leader>v', ':Telescope file_browser path=~/AppData/Local/nvim/<CR>', { silent = true })
else 
    vim.keymap.set('n', '<leader>v', ':Telescope file_browser path=~/.config/nvim/<CR>', { silent = true })
end

-- Telescope project view
vim.keymap.set('n', '<leader>pp', require('telescope').extensions.projects.projects, { silent = true })
