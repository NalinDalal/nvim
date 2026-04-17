return {
	{
		"supermaven-inc/supermaven-nvim",
		event = "InsertEnter",
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<c-j>",
					clear_suggestion = "<C-x>",
					accept_word = "<C-f>",
				},
				ignore_filetypes = { cpp = false, copilotchat = true, markdown = true },
				color = {
					suggestion_color = "#ffffff",
				},
				disable_inline_completion = false,
				disable_keymaps = false,
			})
		end,
	},

	{
		"sudo-tee/opencode.nvim",
		config = function()
			require("opencode").setup({
				default_global_keymaps = true,
				keymap_prefix = "<leader>o",
				ui = {
					position = "right",
					window_width = 0.35,
					enable_treesitter_markdown = false,
				},
			})
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"folke/snacks.nvim",
		},
	},
}

-- vim: ts=4 sts=4 sw=4 et
