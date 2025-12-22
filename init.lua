-- =========================================================
-- Neovim GitKraken Replacement
-- =========================================================

------------------------------------------------------------
-- Leader
------------------------------------------------------------
vim.g.mapleader = " "

------------------------------------------------------------
-- Basic Options
------------------------------------------------------------
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.signcolumn = "yes"

------------------------------------------------------------
-- Bootstrap lazy.nvim
------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

------------------------------------------------------------
-- Plugins
------------------------------------------------------------
require("lazy").setup(require("plugins"))

------------------------------------------------------------
-- Plugin Configurations
------------------------------------------------------------
require("configs")

------------------------------------------------------------
-- Keybinds (GitKraken-style workflow)
------------------------------------------------------------
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Neogit
map("n", "<leader>gs", "<cmd>Neogit<CR>", opts)

-- Diffview
map("n", "<leader>dv", "<cmd>DiffviewOpen<CR>", opts)
map("n", "<leader>dc", "<cmd>DiffviewClose<CR>", opts)
map("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", opts)

-- Gitsigns
map("n", "]h", "<cmd>Gitsigns next_hunk<CR>", opts)
map("n", "[h", "<cmd>Gitsigns prev_hunk<CR>", opts)
map("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", opts)
map("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", opts)
map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>hb", "<cmd>Gitsigns blame_line<CR>", opts)

-- Telescope (Git browsing & search)
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, opts)
map("n", "<leader>fg", builtin.live_grep, opts)
map("n", "<leader>fb", builtin.buffers, opts)
map("n", "<leader>fh", builtin.help_tags, opts)
map("n", "<leader>gc", builtin.git_commits, opts)
map("n", "<leader>gb", builtin.git_branches, opts)
map("n", "<leader>gsf", builtin.git_status, opts)

-- GitHub (Octo)
map("n", "<leader>gi", "<cmd>Octo issue list<CR>", opts)
map("n", "<leader>gp", "<cmd>Octo pr list<CR>", opts)
