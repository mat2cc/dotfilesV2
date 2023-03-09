-- colorscheme setup
require('rose-pine').setup({
    --- @usage 'main' | 'moon'
    dark_variant = 'moon',
});

require('ayu').setup({
    mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})

require("monokai-pro").setup({
    transparent_background = true,
    filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
})

-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha, catppuccin
-- gruvbox
-- tokyonight
-- tokyonight-moon, tokyonight-night, tokyonight-storm, tokyonight-day
-- rose-pine
-- monokai-pro

vim.cmd('colorscheme rose-pine')
