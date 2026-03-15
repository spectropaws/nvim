-- Editor basics
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.opt.relativenumber = true
vim.opt.number = true          -- also show absolute line number on the cursor line
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true   -- required for catppuccin and most themes
vim.opt.signcolumn = "yes"     -- always show sign column so the editor doesn't jump
vim.opt.updatetime = 250       -- faster CursorHold / gitsigns updates
vim.opt.splitright = true      -- vertical splits open to the right
vim.opt.splitbelow = true      -- horizontal splits open below
vim.opt.scrolloff = 8          -- keep 8 lines visible above/below cursor

vim.g.mapleader = " "

require("config.lazy")
