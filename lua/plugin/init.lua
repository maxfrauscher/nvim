-------------------------------------------------
-- PLUGINS
------------------------------------------------
require("nvim_comment").setup()
require("nvim-autopairs").setup()
require("which-key").setup()
require("nvim-surround").setup()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use 'mfussenegger/nvim-dap'
  use 'terrortylor/nvim-comment'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'onsails/lspkind-nvim'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "windwp/nvim-autopairs"
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- GIT --
  -- https://www.chrisatmachine.com/blog/category/neovim/12-git-integration
  use "tpope/vim-fugitive"
  use 'mhinz/vim-signify'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Telescope and related plugins --
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { "nvim-telescope/telescope-file-browser.nvim",
    config = function()
      require("telescope").setup {
        file_ignore_patterns = { ".git/", ".cache", ".lock", "%.o", "%.a", "%.out", "%.pdf", "%.mkv", "%.mp4", "%.zip" },
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
  use { 'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        -- If TS highlights are not enabled at all, or disabled via `disable` prop,
        -- highlighting will fallback to default Vim syntax highlighting
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { 'org' }, -- Required for spellcheck, some LaTex highlights and code block highlights that do not have ts grammar
        },
        ensure_installed = { 'org' }, -- Or run :TSUpdate org
      }
    end,
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- Which key
  use "folke/which-key.nvim"

  -- File management --
  -- use 'vifm/vifm.vim'
  use 'scrooloose/nerdtree'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  -- Colorschemes --
  use 'RRethy/nvim-base16'
  use 'kyazdani42/nvim-palenight.lua'

  -- Other stuff --
  use 'frazrepo/vim-rainbow'
end)
