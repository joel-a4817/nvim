
local telescope = require("telescope")

telescope.setup({
  defaults = {
    -- You can tweak defaults here if you want (prompt_prefix, etc.)
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

-- Load the native fzf extension
pcall(telescope.load_extension, "fzf")

