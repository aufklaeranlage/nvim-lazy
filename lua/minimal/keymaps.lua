local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

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

-- General utils
map('n', 'J', 'mzJ`z', { desc = 'Append line below' })
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move highlighted lines up' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move highlighted lines down' })

--- LuaSnip
local ls = require("luasnip")

vim.keymap.set({'i'}, '<C-K>', function() ls.expand() end, {silent = true})
vim.keymap.set({'i', 's'}, '<C-L>', function() ls.jump( 1) end, {silent = true})
vim.keymap.set({'i', 's'}, '<C-J>', function() ls.jump(-1) end, {silent = true})
