local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("yaroga.lsp.lsp-installer")
require("yaroga.lsp.handlers").setup()
require "yaroga.lsp.null-ls"
