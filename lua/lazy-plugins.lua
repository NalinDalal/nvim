-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
    { 'tpope/vim-sleuth' }, -- Detect tabstop and shiftwidth automatically

    { 'https://github.com/paretje/nvim-man' },
    {
        'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
        main = 'ibl',
        opts = {},
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
    },

    {
        "tadmccorkle/markdown.nvim",
        ft = "markdown", -- or 'event = "VeryLazy"'
        opts = {
            -- configuration here or empty for defaults
        },
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
            heading = {
                -- Turn on / off heading icon & background rendering
                enabled = true,
                -- Turn on / off any sign column related rendering
                sign = false,
                -- Determines how icons fill the available space:
                --  inline:  underlying '#'s are concealed resulting in a left aligned icon
                --  overlay: result is left padded with spaces to hide any additional '#'
                position = 'overlay',
                -- Replaces '#+' of 'atx_h._marker'
                -- The number of '#' in the heading determines the 'level'
                -- The 'level' is used to index into the array using a cycle
                icons = { '  ', '󰫢  ', '󰫣  ', '󰫤  ', '󰫥  ', '󰛄  ' },
                -- Added to the sign column if enabled
                -- The 'level' is used to index into the array using a cycle
                signs = { ' ' },
                -- Width of the heading background:
                --  block: width of the heading text
                --  full:  full width of the window
                -- Can also be an array of the above values in which case the 'level' is used
                -- to index into the array using a clamp
                width = 'level',
                -- Amount of padding to add to the left of headings
                left_pad = 0,
                -- Amount of padding to add to the right of headings when width is 'block'
                right_pad = 0,
                -- Minimum width to use for headings when width is 'block'
                min_width = 0,
                -- Determins if a border is added above and below headings
                border = false,
                -- Highlight the start of the border using the foreground highlight
                border_prefix = false,
                -- Used above heading for border
                above = '▄',
                -- Used below heading for border
                below = '▀',
                -- The 'level' is used to index into the array using a clamp
                -- Highlight for the heading icon and extends through the entire line
                backgrounds = {
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                },
                -- The 'level' is used to index into the array using a clamp
                -- Highlight for the heading and sign icons
                foregrounds = {
                    'RenderMarkdownH1',
                    'RenderMarkdownH2',
                    'RenderMarkdownH3',
                    'RenderMarkdownH4',
                    'RenderMarkdownH5',
                    'RenderMarkdownH6',
                },
            },
        },
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    },
    require 'kickstart/plugins/git',

    require 'kickstart/plugins/which-key',

    require 'kickstart/plugins/telescope',

    require 'kickstart/plugins/lspconfig',

    require 'kickstart/plugins/conform',

    require 'kickstart/plugins/cmp',



    require 'kickstart/plugins/treesitter',

    -- require 'kickstart.plugins.debug',
    -- require 'kickstart.plugins.lint',
    -- require 'kickstart.plugins.autopairs',
    -- require 'kickstart.plugins.neo-tree',

    { import = 'custom.plugins' },
    { import = 'custom.plugins.languages' },
})

-- vim: ts=4 sts=4 sw=4 et