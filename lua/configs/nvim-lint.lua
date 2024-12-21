local options = {
  linters_by_ft = {
    sh = { "bash" },
    git = { "gitlint" },
    json = { "deno" },
    md = { "markdownlint" },
    sql = { "sqlfluff" },
    tf = { "tflint" },
    yaml = { "yamllint" },
    py = { "mypy", "ruff" },
  },
}

return options
