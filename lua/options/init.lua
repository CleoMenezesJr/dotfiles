vim.cmd('filetype plugin indent on')
vim.wo.number = true
vim.o.relativenumber = false
vim.o.cursorline = true
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.softtabstop = 4
vim.bo.softtabstop = 4
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.fileencoding = 'utf-8'
vim.o.cmdheight = 1
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
--vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 7
vim.o.sidescrolloff = 9
vim.o.mouse = 'a'
vim.wo.wrap = false
vim.wo.signcolumn = "yes"
vim.opt.completeopt = "menuone,noselect"
vim.cmd("set noswapfile")
vim.o.clipboard = 'unnamedplus'

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
