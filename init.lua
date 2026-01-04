
-- =========================
-- Minimal Neovim setup (Lua)
-- =========================

-- --- Leader key ---
vim.g.mapleader = " "

-- --- UI ---
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "auto"

-- --- Syntax + Colorscheme ---
-- Keep the order: termguicolors -> syntax on -> colorscheme
vim.cmd("syntax on")
vim.opt.background = "dark"     -- switch to "light" if your terminal theme is light
vim.cmd("colorscheme desert")   -- built-in; use "default" if you prefer

-- --- Transparency (inherit terminal bg; don't change foregrounds) ---
local function hl(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

hl("Normal",        { bg = "none" })
hl("NormalNC",      { bg = "none" })
hl("NonText",       { bg = "none" })
hl("EndOfBuffer",   { bg = "none" })

-- --- Gutter/columns: transparent bg, readable numbers ---
hl("LineNr",        { bg = "none", fg = "#c8c8c8" })
hl("CursorLineNr",  { bg = "none", fg = "#ffffff" })
hl("SignColumn",    { bg = "none" })
hl("FoldColumn",    { bg = "none" })

-- --- Indentation ---
vim.opt.expandtab  = true
vim.opt.shiftwidth = 2
vim.opt.tabstop    = 2

-- --- Clipboard ---
vim.opt.clipboard = "unnamedplus"

-- --- Delete without copying (black-hole) ---
-- NOTE: This will prevent `d`/`dd` from filling registers.
vim.keymap.set("n", "d",  '"_d', { noremap = true })
vim.keymap.set("x", "d",  '"_d', { noremap = true })
vim.keymap.set("n", "dd", '"_dd', { noremap = true })

-- --- Cut entire line to system clipboard (dx) ---
vim.keymap.set("n", "dx", '"+dd', { noremap = true })

-- --- Sane defaults ---
-- (Neovim ignores 'ttyfast', so we skip it)
vim.opt.incsearch  = true
vim.opt.hlsearch   = true
vim.opt.ignorecase = true
vim.opt.smartcase  = true
vim.opt.hidden     = true
vim.opt.swapfile   = false
vim.opt.backspace  = { "indent", "eol", "start" }
vim.opt.laststatus = 0
