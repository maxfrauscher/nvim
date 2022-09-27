require 'lualine'.setup()
require('config')
require('colors')
require('plugin')
require('mappings')
require('lsp')
require('masonlsp')

-- .vim source
vim.cmd('source ~/.config/nvim/plug-config/signify.vim')
