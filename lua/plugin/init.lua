-------------------------------------------------
-- PLUGINS
-------------------------------------------------

return require('packer').startup(function()
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }


  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Dashboard is a nice start screen for nvim
  use 'glepnir/dashboard-nvim'

  -- Telescope and related plugins --
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim",
        config = function()
        require("telescope").setup {
          extensions = {
            file_browser = {
              theme = "ivy",
              -- disables netrw and use telescope-file-browser in its place
              hijack_netrw = true,
              mappings = {
                ["i"] = {
                  -- your custom insert mode mappings
                },
                ["n"] = {
                  -- your custom normal mode mappings
                },
              },
            },
          },
        }
        end
  }
  -- To get telescope-file-browser loaded and working with telescope,
  -- you need to call load_extension, somewhere after setup function:
  require("telescope").load_extension "file_browser"

  -- Treesitter --
  use {'nvim-treesitter/nvim-treesitter',
       config = function()
          require'nvim-treesitter.configs'.setup {
          -- If TS highlights are not enabled at all, or disabled via `disable` prop,
          -- highlighting will fallback to default Vim syntax highlighting
            highlight = {
               enable = true,
               additional_vim_regex_highlighting = {'org'}, -- Required for spellcheck, some LaTex highlights and code block highlights that do not have ts grammar
               },
            ensure_installed = {'org'}, -- Or run :TSUpdate org
            }
       end
  }

  -- Productivity --
  use 'vimwiki/vimwiki'
  use 'jreybert/vimagit'

  -- Which key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      }
    end
  }

  -- File management --
  use 'vifm/vifm.vim'
  use 'scrooloose/nerdtree'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'

  -- Tim Pope Plugins --
  use 'tpope/vim-surround'

  -- Syntax Highlighting and Colors --
  use 'PotatoesMaster/i3-vim-syntax'
  use 'kovetskiy/sxhkd-vim'
  use 'vim-python/python-syntax'
  use 'ap/vim-css-color'

  -- Junegunn Choi Plugins --
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'
  use 'junegunn/vim-emoji'

  -- Colorschemes --
  use 'RRethy/nvim-base16'
  use 'kyazdani42/nvim-palenight.lua'

  -- Other stuff --
  use 'frazrepo/vim-rainbow'
end)

