local M = {}

function M.setup()
  vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
  })

  -- Lua LSP (installed by default)
  vim.lsp.config("lua_ls", {
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
      },
    },
  })

  local servers = {
    "lua_ls", -- installed by default
    "hls",
    "clangd",
    "ocamllsp",
    "tinymist", -- installed by default
  }

  for _, srv in ipairs(servers) do
    vim.lsp.enable(srv)
  end
end

return M
