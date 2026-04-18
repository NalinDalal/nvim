return {
	{
		"barrett-ruth/live-server.nvim",
		build = "pnpm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = true,
	},
	{
		"IogaMaster/neocord",
		event = "VeryLazy",
		enabled = false,
		opts = {
			logo = "auto",
			logo_tooltip = nil,
			main_image = "language",
			client_id = "1157438221865717891",
			log_level = nil,
			debounce_timeout = 10,
			blacklist = {},
			file_assets = {},
			show_time = true,
			global_timer = false,
			editing_text = "Editing %s",
			file_explorer_text = "Browsing %s",
			git_commit_text = "Committing changes",
			plugin_manager_text = "Managing plugins",
			reading_text = "Reading %s",
			workspace_text = "Working on %s",
			line_number_text = "Line %s out of %s",
			terminal_text = "Using Terminal",
		},
	},
}
-- IMP:
-- format to add plugins:
-- inshort this file should return an array of plugin object that object first
-- should have the github repo name and second should be the plugin name
-- like samarth/plugin_name
-- if the githublink is github.com/samarth/plugin_name
--
--
-- return {
--     {
--         'plugin_name',
--     } ,  comma is required
--     {
--         'plugin_name',
--         can add opts here like
--         cmd = "loadplugin"
--         event = "when to load the plugin"
--     }
--  }
