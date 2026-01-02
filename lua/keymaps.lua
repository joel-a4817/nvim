
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

-- Telescope core
map("n", "<leader>ff", builtin.find_files, opts)
map("n", "<leader>fg", builtin.live_grep, opts)
map("n", "<leader>fb", builtin.buffers, opts)
map("n", "<leader>fh", builtin.help_tags, opts)

-- Telescope git pickers
map("n", "<leader>gc", builtin.git_commits,  { desc = "Git commits" })
map("n", "<leader>gC", builtin.git_bcommits, { desc = "Git commits (file)" })
map("n", "<leader>gb", builtin.git_branches, { desc = "Git branches" })
map("n", "<leader>gs", builtin.git_status,   { desc = "Git status" })
map("n", "<leader>gS", builtin.git_stash,    { desc = "Git stash" })

-- Make current buffer modifiable
map("n", "<leader>mm", ":set modifiable<CR>", opts)

