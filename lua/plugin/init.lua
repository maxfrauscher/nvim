-------------------------------------------------
-- PLUGINS
------------------------------------------------

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use 'mfussenegger/nvim-dap'

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- NULL LS --
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  
  
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

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
       end,
       run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }

  -- vim.opt.foldmethod     = 'expr'
  -- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  ---WORKAROUND
 -- vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
 --   group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
 --   callback = function()
 --     vim.opt.foldmethod     = 'expr'
 --     vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
 --   end
 -- })
  ---ENDWORKAROUND

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
  -- use 'vifm/vifm.vim'
  use 'scrooloose/nerdtree'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'

  -- Tim Pope Plugins --
  use 'tpope/vim-surround'

  -- Syntax Highlighting and Colors --
  -- use 'vim-python/python-syntax'
  -- use 'ap/vim-css-color'

  -- Colorschemes --
  use 'RRethy/nvim-base16'
  use 'kyazdani42/nvim-palenight.lua'

  -- Other stuff --
  use 'frazrepo/vim-rainbow'
end)

