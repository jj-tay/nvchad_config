local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    tss = {"deno_fmt"},
    awk = {"awk"},
    sh = {"shfmt"},
    jq = {"jq"},
    json = {"deno_fmt"},
    md = {"markdownlint"},
    sql = {"sqlfluff"},
    tf = {"terraform_fmt"},
    tex = {"latexindent"},
    yaml = {"yamlfmt"},
    py = {"ruff"},
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
