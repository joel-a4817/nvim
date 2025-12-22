------------------------------------------------------------
-- Neogit
------------------------------------------------------------
require("neogit").setup({})

------------------------------------------------------------
-- Diffview
------------------------------------------------------------
require("diffview").setup({})

------------------------------------------------------------
-- Gitsigns
------------------------------------------------------------
require("gitsigns").setup({
  current_line_blame = true,
})

------------------------------------------------------------
-- Telescope
------------------------------------------------------------
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
vim.keymap.set("n", "<leader>gc", builtin.git_commits)
vim.keymap.set("n", "<leader>gb", builtin.git_branches)
vim.keymap.set("n", "<leader>gsf", builtin.git_status)

------------------------------------------------------------
-- Octo
------------------------------------------------------------
require("octo").setup()

------------------------------------------------------------
-- Lualine
------------------------------------------------------------
require("lualine").setup({
  options = {
    theme = "auto",
  },
})
