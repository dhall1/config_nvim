-- A simple list of servers to have mason auto install. The key is the LSP
-- server, and the value for a given key will be applied to mason_lspconfig's
-- settings property for that server
return {
  clangd = {},
  rust_analyzer = {},
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}
