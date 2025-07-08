local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

--	Saving and exiting
map('n', '<leader>w', '<CMD>update<CR>', { desc = 'Save file' })
map('n', '<leader>q', '<CMD>q<CR>', { desc = 'Exit NeoVim window' })

--	Window splitting
map('n', '<leader>v', '<CMD>vsplit<CR>', { desc = 'Split window vertical' })
map('n', '<leader>h', '<CMD>split<CR>', { desc = 'Split window horizontal' })

-- Window navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the window to the left' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the window to the right' })
map('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the window above' })
map('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the window below' })

-- Resize windows
map('n', '<C-Left>', '<C-w><', { desc = 'Resize window to the left' })
map('n', '<C-Right>', '<C-w>>', { desc = 'Resize window to the right' })
map('n', '<C-Up>', '<C-w>+', { desc = 'Resize window upwards' })
map('n', '<C-Down>', '<C-w>-', { desc = 'Resize window downwards' })

-- Yanking
map({ 'n', 'v' }, '<leader>y', '\'+y', { desc = 'Yank to systemclipboard'})
map({ 'n', 'v' }, '<leader>Y', '\'+Y', { desc = 'Yank line to systemclipboard'})

-- General utils
map('n', 'J', 'mzJ`z', { desc = 'Append line below' })
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move highlighted lines up' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move highlighted lines down' })
