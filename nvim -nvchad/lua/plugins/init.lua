return {
    {
      "stevearc/conform.nvim",
      event = 'BufWritePre', -- uncomment for format on save
      config = function()
        require "configs.conform"
      end,
    },
    {
      "christoomey/vim-tmux-navigator",
      lazy=false,
      keys = {
        { "<C-h>", "<cmd>TmuxNavigateLeft<cr>" },
        { "<C-l>", "<cmd>TmuxNavigateRight<cr>" },
        { "<c-j>", "<cmd>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd>TmuxNavigateUp<cr>" },
      },
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
          "lua-language-server", "stylua",
          "html-lsp", "css-lsp" , "prettier"
        },
      },
    },

    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "vim", "lua", "vimdoc",
         "html", "css"
        },
      },
    },
    {
      'nvim-java/nvim-java',
      lazy=false,
      dependencies = {
        'nvim-java/lua-async-await',
        'nvim-java/nvim-java-refactor',
        'nvim-java/nvim-java-core',
        'nvim-java/nvim-java-test',
        'nvim-java/nvim-java-dap',
        'MunifTanjim/nui.nvim',
        'neovim/nvim-lspconfig',
        'mfussenegger/nvim-dap',
        {
          'williamboman/mason.nvim',
          opts = {
            registries = {
              'github:nvim-java/mason-registry',
              'github:mason-org/mason-registry',
            },
          },
        }
      },
        config = function()
          require("java").setup {}
          require('lspconfig').jdtls.setup({})
        end,
    },
    {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },

      -- see below for full list of options 👇
    },
  },
  {
  "epwalsh/pomo.nvim",
  version = "*",  -- Recommended, use latest release instead of latest commit
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat" },
  dependencies = {
    -- Optional, but highly recommended if you want to use the "Default" timer
    "rcarriga/nvim-notify",
  },
  opts = {
    -- See below for full list of options 👇
  },
}
  }
