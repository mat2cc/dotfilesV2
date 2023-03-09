local ok, _ = pcall(require, "telescope")
if not ok then
  print("no telescope")
  return
end

local nnoremap = require("mattc.keymap").nnoremap

local builtin = require('telescope.builtin')

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

nnoremap("<leader>ff", builtin.find_files)
nnoremap("<leader>fi", builtin.git_files)
nnoremap("<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })

end)
