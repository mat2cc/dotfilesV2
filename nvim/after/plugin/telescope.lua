local ok, telescope = pcall(require, "telescope")
if not ok then 
    print("no telescope")
    return
end

local nnoremap = require("mattc.keymap").nnoremap

-- telescope.setup()

local builtin = require('telescope.builtin')

nnoremap("<leader>pf", builtin.find_files)
nnoremap("<leader>f", builtin.git_files)
nnoremap("<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

