-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- TELESCOPE
map('n', '<Space>ff', '<cmd>Telescope find_files<CR>')
map('n', '<Space>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<Space>fb', '<cmd>Telescope buffers<CR>')
map('n', '<Space>fh', '<cmd>Telescope help_tags<CR>')
map('n', '<Space>fr', '<cmd>Telescope lsp_references<CR>')
map('n', '<Space>fi', '<cmd>Telescope lsp_implementations<CR>')
map('n', '<Space>fd', '<cmd>Telescope lsp_definitions<CR>')

-- NvimTree
map('n', '<Space>n', ':NvimTreeRefresh<CR>') -- refresh
map('n', '<C-n>', ':NvimTreeToggle<CR>') -- open/close
map('n', '<C-f>', ':NvimTreeFindFile<CR>') -- search file

-- NERDTree
-- map('n', '<Space>n', '<cmd>NERDTreeFocus<CR>' )
-- map('n', '<C-n>', '<cmd>NERDTree<CR>' )
-- map('n', '<C-t>', '<cmd>NERDTreeToggle<CR>' )
-- map('n', '<C-f>', '<cmd>NERDTreeFind<CR>' )

-- GIT
map('n', '<Space>gd', '<cmd>SignifyDiff<CR>')
map('n', '<Space>gb', '<cmd>Git blame<CR>')

-- INSERT MAPPINGS
map('i', 'jk', '<ESC>')

map('n', '<Space>F', '<cmd>lua vim.lsp.buf.formatting()<CR>')

map('n', '<Space>l', ':ls<CR>') -- buffer list
map('n', '<Space><', ':bp<CR>') -- previous buffer
map('n', '<Space>>', ':bn<CR>') -- next buffer
map('n', '<Space>bb', ':e#<CR>') -- switch buffers
map('n', '<Space>bx', ':bd<CR>') -- close buffer

map('v', '<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>')
