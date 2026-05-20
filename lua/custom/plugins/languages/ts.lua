return {
	{
		"razak17/tailwind-fold.nvim",
		opts = {},
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		ft = { "html", "javascriptreact", "svelte", "astro", "vue", "typescriptreact", "php", "blade" },
	},
	{
		"davidmh/mdx.nvim",
		ft = { "mdx" },
		config = true,
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {
			opts = {
				-- Defaults
				enable_close = true, -- Auto close tags
				enable_rename = true, -- Auto rename pairs of tags
				enable_close_on_slash = false, -- Auto close on trailing </
			},
			-- Also override individual filetype configs, these take priority.
			-- Empty by default, useful if one of the global settings
			-- doesn't work well in a specific filetype
			per_filetype = {
				["html"] = {
					enable_close = false,
				},
			},
		},
	},
}
