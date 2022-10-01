require("mason").setup()
require("mason-lspconfig").setup()

local mason_status_ok, mason = pcall(require, 'mason')
if not mason_status_ok then
  return
end

local masonlsp_status_ok, masonlspconfig = pcall(require, 'mason-lspconfig')
if not masonlsp_status_ok then
  return
end

mason.setup()
masonlspconfig.setup()
