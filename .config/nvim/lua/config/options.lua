-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set the python provider
vim.g.python3_host_prog = "/home/bgriebel/environments/pynvim/bin/python"

-- Allow incrementing for alphabetic characters
vim.opt.nrformats:append("alpha")

-- Set the python lsp
vim.g.lazyvim_python_lsp = "pylsp"

vim.o.shell = "fish"
