local o = vim.o
local opt = vim.opt
local g = vim.g

o.number = true
o.relativenumber = false
o.autoindent = true
o.smarttab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.mouse = "a"
o.termguicolors = true

opt.wrap = false
opt.wrap = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

opt.cursorline = true

vim.cmd [[
  highlight CursorLineNr guifg=#F2AF62 ctermfg=yellow
]]

g.lazyvim_picker = "telescope"


