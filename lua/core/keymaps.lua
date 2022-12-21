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

-- Harpoon
map('n', '<Space>a', '<cmd>lua require("harpoon.mark").add_file()<cr>')
map('n', '<C-e>', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')


--LSP
-- map('n', '<Space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true })

map('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
map('n', '<Space>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
map('v', '<Space>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

--CLIPBOARD
map('n', '<Space>y', '\"+y') -- YANK
map('v', '<Space>y', '\"+y')

map('x', '<Space>p', '\"_dP') -- PASTE IN VISUALMODE WITHOUT COPYING TO CLIPBOARD

map('n', '<Space>d', '\"_d') -- DELETE
map('v', '<Space>d', '\"_d')

-- RESIZE WINDOWS
map('n', '±' , ':horizontal resize +20<CR>') -- Alt +
map('n', '—' , ':horizontal resize -20<CR>') -- Alt -
map('n', '˘' , ':vertical resize +20<CR>') -- Alt >
map('n', '¯' , ':vertical resize -20<CR>') -- Alt <

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')

-- TELESCOPE
map('n', '<Space>ff', '<cmd>Telescope find_files<CR>')
map('n', '<Space>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<Space>fb', '<cmd>Telescope buffers<CR>')
map('n', '<Space>fh', '<cmd>Telescope help_tags<CR>')
map('n', '<Space>fr', '<cmd>Telescope lsp_references<CR>')
map('n', '<Space>fi', '<cmd>Telescope lsp_implementations<CR>')
map('n', '<Space>fd', '<cmd>Telescope lsp_definitions<CR>')

-- LINE MOVEMENT <A-j>  = ∆, <A-k> = ˚
map('n', '∆', ':m+ <CR>==')
map('n', '˚', ':m-2 <CR>==')
map('v', '∆', ':m+ <CR>gv=gv')
map('v', '˚', ':m-2 <CR>gv=gv')
map('i', '˚', '<Esc>:m-2 <CR>==gi')
map('i', '∆', '<Esc>:m+ <CR>==gi')

-- LINE MOVEMENT Windows Mapping
map('n', '<A-j>', ':m+ <CR>==')
map('n', '<A-k>', ':m-2 <CR>==')
map('v', '<A-j>', ':m+ <CR>gv=gv')
map('v', '<A-k>', ':m-2 <CR>gv=gv')
map('i', '<A-k>', '<Esc>:m-2 <CR>==gi')
map('i', '<A-j>', '<Esc>:m+ <CR>==gi')

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

map('n', '<Space>u', '<cmd>UndotreeToggle<CR>')
