-- Configure filetypes for media files
vim.filetype.add({
    extension = {
        -- Images
        png = 'image',
        jpg = 'image',
        jpeg = 'image',
        gif = 'image',
        webp = 'image',
        svg = 'image',
        
        -- Videos
        mp4 = 'video',
        webm = 'video',
        mkv = 'video',
        
        -- Documents
        pdf = 'pdf',
        epub = 'epub',
        
        -- Audio
        mp3 = 'audio',
        wav = 'audio',
        ogg = 'audio',
    }
})

-- Configure external viewers
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.svg" },
    callback = function()
        vim.cmd('silent !feh "%"')
    end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*.pdf" },
    callback = function()
        vim.cmd('silent !zathura "%"')
    end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*.mp4", "*.webm", "*.mkv" },
    callback = function()
        vim.cmd('silent !mpv "%"')
    end,
})

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

    -- Telescope media files
    {
        "nvim-telescope/telescope-media-files.nvim",
        dependencies = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("telescope").load_extension("media_files")
            -- Add keybinding for media files
            vim.keymap.set("n", "<leader>fm", function()
                require("telescope").extensions.media_files.media_files()
            end, { desc = "Find media files" })
        end,
    },
}

