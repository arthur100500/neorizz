require("config.lazy")
require("options")
require("keymaps")

vim.cmd.colorscheme("evergarden-fall")

require("cangjie-nvim").setup({
  auto_install = true,              -- 自动下载 wrapper（默认 false）
  auto_update = true,               -- 自动更新 wrapper（默认 false）
  update_interval = 86400,          -- 检查更新间隔（秒，默认每天）
  version = "latest",               -- 版本：latest 或 v0.1.1
  bin_path = nil,                   -- 自定义 wrapper 路径（可选）
  backend = "auto",                 -- "auto" (Neovim 0.11+ 原生 API) 或 "lspconfig"（兼容旧版）
})
