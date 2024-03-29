return {
    -- {
    --     "nvim-telescope/telescope-fzf-native.nvim",
    --     build = "make"
    -- },
    "christoomey/vim-tmux-navigator",
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons", lazy = true }
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim",          cmd = "Mason" },
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
    },
    { "github/copilot.vim", lazy = false },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = true
    },

    {
        "folke/zen-mode.nvim",
        opts = {
            width = .8
        },
        cmd = "ZenMode",
        keys = {
            { "<leader>zz", ":ZenMode<CR>" }
        },

    }
}
