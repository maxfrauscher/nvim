local nullls_status_ok, nullls = pcall(require, 'null-ls')
if not nullls_status_ok then
  return
end

nullls.setup({
  sources = {
    require("null-ls").builtins.formatting.stylua,
    require("null-ls").builtins.formatting.prettier,
    -- require("null-ls").builtins.diagnostics.eslint,
    require("null-ls").builtins.completion.spell
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("nnoremap <silent><buffer> <Leader>F :lua vim.lsp.buf.formatting()<CR>")
    end

    if client.server_capabilities.documentRangeFormattingProvider then
      vim.cmd("xnoremap <silent><buffer> <Leader>F :lua vim.lsp.buf.range_formatting({})<CR>")
    end
  end,
})
