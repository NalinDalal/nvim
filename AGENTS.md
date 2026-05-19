# AGENTS.md

This is a personal Neovim configuration based on kickstart.nvim. Not a software project - directly edit Lua files to modify.

## Key commands

- `nvim` - Start Neovim (plugins auto-install on first run via lazy.nvim)
- `:Lazy` - Plugin manager UI
- `:Lazy update` - Update plugins

## Important non-obvious keymaps

- `<Space>` - Leader key
- `<localleader> =` - Close other windows (`<C-w>o`)
- `<Tab>` / `<S-Tab>` - Next/prev buffer
- `<leader>tw` - Toggle spellcheck
- `<leader>td` - Toggle LSP diagnostics
- `<leader>tc` - Toggle treesitter context
- `<leader>xx` - Trouble diagnostics UI
- `L` / `H` - Go to line end/start (like Airline-friendly)
- `j` / `k` - Handle wrapped lines with `gj`/`gk`
- `vv` - Visual line mode

## Configuration quirks

- Shell: **fish** (`vim.o.shell = "/usr/bin/fish"`)
- Tabs: 4 spaces, expandtab enabled
- Line width: 80 chars (`.stylua.toml`)
- Clipboard: delayed init via `schedule()` - needed for clipboard to work
- `vim.g.have_nerd_font = true` - Nerd Font enabled

## File structure

- `init.lua` - Entry point, loads modules in order
- `lua/options.lua` - Vim settings
- `lua/keymaps.lua` - Global keymaps
- `lua/keybinds.lua` - Additional keybindings
- `lua/macros.lua` - Macros
- `lua/lazy-plugins.lua` - Plugin spec + imports
- `lua/custom/plugins/` - User plugins
- `lua/kickstart/plugins/` - Base kickstart plugins

## Formatting

Run StyLua before committing:
```sh
stylua lua/
```

Config: `.stylua.toml` (80 column width, single quotes preferred)