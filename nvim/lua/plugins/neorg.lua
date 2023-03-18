return {
    "nvim-neorg/neorg",
    version = "*",
    config = {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.norg.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        notes = "~/notes",
                    },
                },
            },
        },
    },
    build = ":Neorg sync-parsers",
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
      { "<leader>ne", ":Neorg workspace notes<CR>"}
    }
}
