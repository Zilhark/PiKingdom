-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true
vim.o.scrolloff = 8
vim.o.updatetime = 50

-- Lualine configuration
pcall(function() require('lualine').setup() end)

-- Treesitter configuration
pcall(function()
  require('nvim-treesitter.configs').setup {
    ensure_installed = {"python", "rust"},
    highlight = {
      enable = true,
    },
  }
end)

-- ALE settings for linting and formatting
vim.g.ale_linters = {
  python = {'flake8', 'mypy'},
  rust = {'cargo'},
}
vim.g.ale_fixers = {
  python = {'black', 'isort'},
  rust = {'rustfmt'},
}
vim.g.ale_fix_on_save = 1

-- Ensure Neovim can find your Python interpreter
vim.g.python3_host_prog = '/usr/bin/python3'
