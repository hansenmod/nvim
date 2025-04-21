
vim.o.number=true
vim.o.cursorline=true
vim.o.termguicolors=true
vim.o.timeoutlen=0
vim.o.timeout=false
vim.o.laststatus = 2
vim.o.statusline = "%F"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
