local status_ok, _ = pcall(require, 'nvim-lsp-installer')
if not status_ok then
  return
end

local servers = { "clangd", "sumneko_lua", "tsserver", "jsonls", "jdtls", "texlab", "cmake", "html", "pyright" }
require("nvim-lsp-installer").setup({
    ensure_installed = servers, -- ensure these servers are always installed
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
