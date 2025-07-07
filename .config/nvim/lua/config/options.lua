-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- slime for tmux
vim.g.slime_target = "tmux"
-- vim.g.slime_python_ipython = 1
vim.cmd([[
  let g:slime_dont_ask_default = 1
  let g:slime_default_config = {"socket_name":get(split($TMUX, ","), 0), "target_pane": ":.2"}
]])

-- Set the python provider
vim.cmd("let g:python3_host_prog = '/home/bgriebel/environments/pynvim/bin/python'")

-- Stop autocommenting next line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Allow incrementing for alphabetic characters
vim.cmd("set nrformats+=alpha")

-- Set the python lsp
vim.g.lazyvim_python_lsp = "pylsp"

vim.o.shell = "fish"
