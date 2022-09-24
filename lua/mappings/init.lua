local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- TELESCOPE
map('n', '<Space>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<Space>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<Space>fb', '<cmd>Telescope buffers<CR>', opts)
map('n', '<Space>fh', '<cmd>Telescope help_tags<CR>', opts)

-- NERDTree
map('n', '<Space>n', '<cmd>NERDTreeFocus<CR>', opts)
map('n', '<C-n>', '<cmd>NERDTree<CR>', opts)
map('n', '<C-t>', '<cmd>NERDTreeToggle<CR>', opts)
map('n', '<C-f>', '<cmd>NERDTreeFind<CR>', opts)


-- INSERT MAPPINGS
map('i', 'jk', '<ESC>', opts)

map('n', '<Space>F', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

map ('n', '<Leader>l', ':ls<CR>', opts)  -- buffer list
map ('n', '<Leader><', ':bp<CR>', opts)  -- previous buffer
map ('n', '<Leader>>', ':bn<CR>', opts)  -- next buffer
map ('n', '<Leader>g', ':e#<CR>', opts)  -- switch buffers
map ('n', '<Leader>bx', ':bd<CR>', opts) -- close buffer
