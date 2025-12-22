return {

  -- Required
  { "nvim-lua/plenary.nvim" },

  -- ===============================
  -- GitKraken Core
  -- ===============================

  {
    "TimUntersberger/neogit",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "lewis6991/gitsigns.nvim",
  },

  -- ===============================
  -- Search / Browsing
  -- ===============================

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- ===============================
  -- GitHub (PRs / Issues)
  -- ===============================

  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },

  -- ===============================
  -- UI
  -- ===============================

  {
    "nvim-lualine/lualine.nvim",
  },
}
