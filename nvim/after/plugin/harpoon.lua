local _, ui = pcall(require, "harpoon.ui")
local ok, mark = pcall(require, "harpoon.mark")

if not ok then 
    print("no harpoon")
    return
end

local nnoremap = require("mattc.keymap").nnoremap

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

nnoremap("<leader>a", function() mark.add_file() end)
nnoremap("<C-e>", function() ui.toggle_quick_menu() end)

