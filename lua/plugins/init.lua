return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", 
        "stylua",
        "html-lsp", 
        "css-lsp" , 
        "prettier",
        "typescript-language-server",
        "deno",
        "awk-language-server",
        "bash-language-server",
        "docker-compose-language-server",
        "dockerfile-language-server",
        "dot-language-server",
        "jq-lsp",
        "json-lsp",
        "marksman",
        "sqlls",
        "terraform-ls",
        "texlab",
        "yaml-language-server",
        "pyright",
        "gitlint",
        "jsonlint",
        "markdownlint",
        "sqlfluff",
        "yamllint",
        "black",
      },
    },
  },
  
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", 
        "lua", 
        "vimdoc
        "html", 
        "css",
        "javascript",
        "typescript",
        "markdown",
        "markdown_inline",
        "awk",
        "bash",
        "dockerfile",
        "dot",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "hcl",
        "jq",
        "json",
        "latex",
        "python",
        "r",
        "regex",
        "sql",
        "yaml",
      },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "jalvesap/Nvim-R",
    ft = "r",
  },
}
