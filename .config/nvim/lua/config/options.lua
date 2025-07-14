-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set the python provider
vim.g.python3_host_prog = "/home/bgriebel/environments/pynvim/bin/python"

-- Stop autocommenting next line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Allow incrementing for alphabetic characters
vim.cmd("set nrformats+=alpha")

-- Set the python lsp
vim.g.lazyvim_python_lsp = "pylsp"

vim.o.shell = "fish"
