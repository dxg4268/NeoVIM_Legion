---- NeoVIM Config
---- (C) 2023 Aditya Sharma <dxg4268>



-- Setting mapleader
vim.g.mapleader = ' '


-- setting options
vim.o.relativenumber = true
vim.opt.cursorline = true


-- Tabs and indents
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Packer Plugin Manager
require('plugins')
