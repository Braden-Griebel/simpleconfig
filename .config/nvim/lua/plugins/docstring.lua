return {
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    keys = {
      {
        "<leader>jf",
        function()
          require("neogen").generate({ type = "func" })
        end,
        desc = "Generate Function Docstring",
      },
      {
        "<leader>jc",
        function()
          require("neogen").generate({ type = "class" })
        end,
        desc = "Generate Class Docstring",
      },
    },
    opts = {
      enabled = true,
      languages = {
        python = {
          template = {
            annotation_convention = "reST", -- set annotation convention for python
          },
        },
      },
    },
  },
}
