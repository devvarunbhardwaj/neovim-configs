return {
  -- Add Tokyo Night theme
  { "folke/tokyonight.nvim" },
  -- Configure LazyVim to load Tokyo Night

  "tiagovla/tokyodark.nvim",

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aurora",
    },
  },
  opts = {
  },
  config = function(_, opts)
    require("tokyodark").setup(opts) -- calling setup is optional
    vim.cmd [[colorscheme tokyodark]]
  end,

  -- adding aurora
  -- lazy
  {
    'ray-x/aurora',
    init = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
      vim.g.aurora_bold = 1
    end,
  }

}
