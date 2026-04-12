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
				disable_inline_completion = false, -- disables inline completion for use with cmp
				disable_keymaps = false, -- disables built in keymaps for more manual control
			})
		end,
	},

	-- {
	--     "monkoose/neocodeium",
	--     event = "VeryLazy",
	--     config = function()
	--         local neocodeium = require("neocodeium")
	--         neocodeium.setup()
	--         vim.keymap.set("i", "<C-f>", neocodeium.accept)
	--         vim.keymap.set("i", "<C-d>", neocodeium.cycle)
	--         vim.keymap.set("i", "<C-j>", neocodeium.accept_word)
	--     end,
	-- },
	-- { "github/copilot.vim" },

	{
		"nickjvandyke/opencode.nvim",
		version = "*",
		config = function()
			vim.g.opencode_opts = {}

			vim.o.autoread = true

			vim.keymap.set({ "n", "x" }, "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode…" })
			vim.keymap.set({ "n", "x" }, "<C-x>", function() require("opencode").select() end, { desc = "Execute opencode action…" })
			vim.keymap.set({ "n", "t" }, "<C-.>", function() require("opencode").toggle() end, { desc = "Toggle opencode" })

			vim.keymap.set({ "n", "x" }, "go", function() return require("opencode").operator("@this ") end, { desc = "Add range to opencode", expr = true })
			vim.keymap.set("n", "goo", function() return require("opencode").operator("@this ") .. "_" end, { desc = "Add line to opencode", expr = true })

			vim.keymap.set("n", "<S-C-u>", function() require("opencode").command("session.half.page.up") end, { desc = "Scroll opencode up" })
			vim.keymap.set("n", "<S-C-d>", function() require("opencode").command("session.half.page.down") end, { desc = "Scroll opencode down" })

			vim.keymap.set("n", "+", "<C-a>", { desc = "Increment under cursor", noremap = true })
			vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement under cursor", noremap = true })
		end,
	},
}

-- vim: ts=4 sts=4 sw=4 et
