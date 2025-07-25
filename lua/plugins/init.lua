return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "mfussenegger/nvim-lint",
  },

  {
    "williamboman/mason.nvim",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
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
        "rnoweb"
      },
    },
  },

  {
    "R-nvim/cmp-r",
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("cmp").setup({ sources = {{ name = "cmp_r" }}})
            require("cmp_r").setup({})
        end,
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    event = "BufReadPre",
    lazy = false,
  },

  {
    "R-nvim/R.nvim",
    ft = "r",
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
