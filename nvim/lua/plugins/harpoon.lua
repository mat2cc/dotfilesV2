return {
    "theprimeagen/harpoon",
    keys = {
        { "<leader>a",  function() require('harpoon.mark').add_file() end },
        { "<C-e>",      function() require('harpoon.ui').toggle_quick_menu() end },
        { "<leader>ha", function() require('harpoon.ui').nav_file(1) end },
        { "<leader>ho", function() require('harpoon.ui').nav_file(2) end },
        { "<leader>he", function() require('harpoon.ui').nav_file(3) end },
        { "<leader>hu", function() require('harpoon.ui').nav_file(4) end },
        { "<leader>hi", function() require('harpoon.ui').nav_file(5) end },
    }
}
