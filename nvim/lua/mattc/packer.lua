vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    -- themes
    use({ "catppuccin/nvim", as = "catppuccin" })
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use("morhetz/gruvbox")
    use("Shatur/neovim-ayu")
    use("folke/tokyonight.nvim")
    use ("loctvl842/monokai-pro.nvim")

    -- telescope
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use { "nvim-telescope/telescope-ui-select.nvim" } -- select for code actions

    use("windwp/nvim-ts-autotag")

    use("christoomey/vim-tmux-navigator")

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("nvim-treesitter/nvim-treesitter-context")
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("Shougo/defx.nvim", { run = ":UpdateRemotePlugins" })

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })

    use {
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "simrat39/rust-tools.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        }
    }

    use("folke/zen-mode.nvim")
    use("github/copilot.vim")

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
        end
    })

    use {
    "nvim-neorg/neorg",
    tag = "*",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.norg.concealer"] = {
                  icons = {
                    todo = {
                      undone = {
                        icon = "_"
                      }
                    }
                  }
                }, -- Adds pretty icons to your documents
                ["core.norg.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                    },
                },
            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}

end)
