return {
    -- {
    --     "CopilotC-Nvim/CopilotChat.nvim",
    --     cmd = { "CopilotChat", "CopilotChatToggle", "CC" },
    --     dependencies = {
    --         {
    --             "github/copilot.vim",
    --
    --         }, -- or zbirenbaum/copilot.lua
    --         { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    --     },
    --     build = "make tiktoken", -- Only on MacOS or Linux
    --     opts = {
    --         debug = true, -- Enable debugging
    --
    --         question_header = '  User ', -- Header to use for user questions
    --         answer_header = '  Copilot ', -- Header to use for AI answers
    --         error_header = '  Error ', -- Header to use for errors
    --         separator = ' ', -- Separator to use in chat             -- See Configuration section for rest
    --
    --         show_folds = true, -- Shows folds for sections in chat
    --         show_help = false, -- Shows help message as virtual lines when waiting for user input
    --         auto_follow_cursor = false, -- Auto-follow cursor in chat
    --         auto_insert_mode = false, -- Automatically enter insert mode when opening window and on new prompt
    --         insert_at_end = false, -- Move cursor to end of buffer when inserting text
    --         clear_chat_on_new_prompt = false, -- Clears chat on every new prompt
    --         highlight_selection = true, -- Highlight selection in the source buffer when in the chat window
    --
    --         window = {
    --             layout = 'vertical',  -- 'vertical', 'horizontal', 'float', 'replace'
    --             width = 0.5,          -- fractional width of parent, or absolute width in columns when > 1
    --             height = 0.5,         -- fractional height of parent, or absolute height in rows when > 1
    --             -- Options below only apply to floating windows
    --             relative = 'editor',  -- 'editor', 'win', 'cursor', 'mouse'
    --             border = 'single',    -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
    --             row = nil,            -- row position of the window, default is centered
    --             col = nil,            -- column position of the window, default is centered
    --             title = 'Copilot.md', -- title of chat window
    --             footer = nil,         -- footer of chat window
    --             zindex = 1,           -- determines if window is on top or below other floating windows
    --         },
    --     },
    --     -- See Commands section for default commands if you want to lazy load on them
    -- },
}
