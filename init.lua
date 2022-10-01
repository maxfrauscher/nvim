require 'lualine'.setup()
require('config')
require('colors')
require('plugin')
require('mappings')
require('completion')
require('formatting')
require('linting')
require('lsp')
require('masonlsp')

-- .vim source
vim.cmd('source ~/.config/nvim/plug-config/signify.vim')
