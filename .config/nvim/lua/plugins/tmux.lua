return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "Tmux Navigate Left" },
      { "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "Tmux Navigate Down" },
      { "<C-k>", "<cmd>TmuxNavigateup<CR>", desc = "Tmux Navigate Up" },
      { "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "Tmux Navigate Right" },
    },
  },
}
