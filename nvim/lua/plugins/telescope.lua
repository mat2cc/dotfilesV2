return {
    "nvim-telescope/telescope.nvim",
    version = "0.1.x",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            name = "fzf",
        },
        {
          "nvim-telescope/telescope-ui-select.nvim", -- select for code actions
          name = "ui-select"
        }
    },
    keys = {
        { "<leader>ff", function() require('telescope.builtin').find_files() end },
        { "<leader>fi", function() require('telescope.builtin').git_files() end },
        { "<leader>ps", function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }) end }
    },
    config = function()
      require('telescope').setup {
          extensions = {
              fzf = {
                  fuzzy = true, -- false will only do exact matching
                  override_generic_sorter = true, -- override the generic sorter
                  override_file_sorter = true, -- override the file sorter
                  case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                  -- the default case_mode is "smart_case"
              },
              ["ui-select"] = {
                require("telescope.themes").get_dropdown()
              }
          }
      }
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('ui-select')
    end
}
