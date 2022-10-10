-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter


local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
    return
end

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
nvim_treesitter.setup {
    autotag = { enable = true },
    context_commentstring = {
        enable = true,
        enable_autocmd = false
    },
    -- A list of parser names, or "all"
    ensure_installed = {
        'bash', 'c', 'cpp', 'css', 'html', 'javascript', 'json', 'lua', 'python',
        'rust', 'typescript', 'vim', 'yaml', 'tsx', 'org',
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        additional_vim_regex_highlighting = { 'org' }, -- Required for spellcheck, some LaTex highlights and code block highlights that do not have ts grammar
    },
}
