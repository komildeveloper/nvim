local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "komil.lsp.mason"
require("komil.lsp.handlers").setup()
require "komil.lsp.null-ls"
