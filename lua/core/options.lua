local g = vim.g
local o = vim.o
local opt = vim.opt
-- local A = vim.api

o.termguicolors = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 50

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = true
opt.sidescroll = 1
opt.sidescrolloff = 20
-- Better editing experience
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = false
o.textwidth = 300

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4 -- If negative, shiftwidth value is used
o.expandtab = true

o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = ''

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

opt.mouse = "a"

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
