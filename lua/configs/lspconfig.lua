require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "awk_ls",
  "bashls",
  "docker_compose_language_service",
  "dockerls",
  "dotls",
  "jqls",
  "jsonls",
  "marksman",
  "r_language_server",
  "sqlls",
  "terraformls",
  "texlab",
  "yamlls",
  "ruff",
}
vim.lsp.enable(servers)
