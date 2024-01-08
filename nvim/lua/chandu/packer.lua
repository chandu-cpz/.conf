-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use { "catppuccin/nvim", as = "catppuccin" }
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ( 'mbbill/undotree')
  use ( 'tpope/vim-fugitive')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lua'},
    {'rafamadriz/friendly-snippets'},
  }
}
 use {
  "christoomey/vim-tmux-navigator",
  config = function()
    vim.g.tmux_navigator_no_mappings = 1

    vim.api.nvim_set_keymap("n", "<C-h>", ":TmuxNavigateLeft<cr>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<C-j>", ":TmuxNavigateDown<cr>", {noremap = true})  
    vim.api.nvim_set_keymap("n", "<C-k>", ":TmuxNavigateUp<cr>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<C-l>", ":TmuxNavigateRight<cr>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<C-\\>", ":TmuxNavigatePrevious<cr>", {noremap = true})
  end
}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
  use {
  'kyazdani42/nvim-tree.lua',
  requires = 'kyazdani42/nvim-web-devicons'
}
    use ( 'BurntSushi/ripgrep')
    use ( 'sharkdp/fd')
end)
