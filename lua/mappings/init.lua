local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- TELESCOPE
map('n', '<Space>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<Space>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<Space>fb', '<cmd>Telescope buffers<CR>', opts)
map('n', '<Space>fh', '<cmd>Telescope help_tags<CR>', opts)
map('n', '<Space>fr', '<cmd>Telescope lsp_references<CR>', opts)
map('n', '<Space>fi', '<cmd>Telescope lsp_implementations<CR>', opts)
map('n', '<Space>fd', '<cmd>Telescope lsp_definitions<CR>', opts)

-- NERDTree
map('n', '<Space>n', '<cmd>NERDTreeFocus<CR>', opts)
map('n', '<C-n>', '<cmd>NERDTree<CR>', opts)
map('n', '<C-t>', '<cmd>NERDTreeToggle<CR>', opts)
map('n', '<C-f>', '<cmd>NERDTreeFind<CR>', opts)

-- GIT 
map('n', '<Space>gd', '<cmd>SignifyDiff<CR>', opts)
map('n', '<Space>gb', '<cmd>Git blame<CR>', opts)

-- INSERT MAPPINGS
map('i', 'jk', '<ESC>', opts)

map('n', '<Space>F', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

map ('n', '<Leader>l', ':ls<CR>', opts)  -- buffer list
map ('n', '<Leader><', ':bp<CR>', opts)  -- previous buffer
map ('n', '<Leader>>', ':bn<CR>', opts)  -- next buffer
map ('n', '<Leader>bb', ':e#<CR>', opts)  -- switch buffers
map ('n', '<Leader>bx', ':bd<CR>', opts) -- close buffer

map ('v', '<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>', opts)
