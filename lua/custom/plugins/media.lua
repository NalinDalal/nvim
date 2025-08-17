return {
    -- Inline image preview (Kitty/WezTerm/iTerm2 required)
    {
        "3rd/image.nvim",
        config = function()
            require("image").setup({
                render = {
                    min_padding = 5,
                    show_label = true,
                    use_dither = true,
                },
                events = { "BufRead", "BufNewFile" },
            })
        end,
    },

    -- PDF workflow for LaTeX
    {
        "lervag/vimtex",
        ft = { "tex" },
        config = function()
            vim.g.vimtex_view_method = "zathura" -- or "sioyek", "skim", etc.
            vim.g.vimtex_compiler_method = "latexmk"
        end,
    },

    -- Table mode for CSV/XLSX
    {
        "dhruvasagar/vim-table-mode",
        ft = { "markdown", "csv", "txt" },
    },
}

