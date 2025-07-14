return {
  -- add vim slime
  {
    "jpalardy/vim-slime",
    init = function()
      vim.g.slime_target = "tmux"
      vim.g.slime_bracketed_paste = 1
      vim.g.slime_default_config = {
        socket_name = vim.fn.split(vim.env.TMUX, ",")[1],
        target_pane = ":.2",
      }
    end,
    config = function()
      vim.g.slime_menu_config = false
      vim.keymap.set("n", "gz", "<Plug>SlimeMotionSend", { remap = true, silent = false })
      vim.keymap.set("n", "gzz", "<Plug>SlimeLineSend", { remap = true, silent = false })
      vim.keymap.set("x", "gz", "<Plug>SlimeRegionSend", { remap = true, silent = false })
      vim.keymap.set("n", "gzc", "<Plug>SlimeConfig", { remap = true, silent = false })
    end,
  },
}
