# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration based on kickstart.nvim, customized for Rust development. It uses Lazy.nvim for plugin management and includes LSP, debugging, formatting, and completion support.

## Key Commands

- `:Lazy` - Open plugin manager UI (install, update, sync plugins)
- `:Mason` - Open LSP/tool installer UI
- `:checkhealth` - Verify system requirements and plugin health
- `:LspInfo` - Show active LSP clients for current buffer

## Architecture

### File Structure

- `init.lua` - Main configuration file containing options, keymaps, autocommands, and plugin specs
- `lua/custom/plugins/` - Custom plugin configurations (each file returns a lazy.nvim plugin spec)
- `lua/kickstart/` - Base kickstart plugins and health checks

### Plugin System

Lazy.nvim auto-imports all files from `lua/custom/plugins/` via `{ import = 'custom.plugins' }`. To add a new plugin, create a new `.lua` file in that directory returning a plugin spec table.

### Configured Language Servers

- `rust_analyzer` - Rust
- `clangd` - C/C++
- `ts_ls` - TypeScript/JavaScript
- `ruby_lsp` - Ruby
- `lua_ls` - Lua

LSP servers are managed via Mason and auto-installed on startup.

### Formatting (conform.nvim)

- Lua: `stylua`
- Rust: `rustfmt`
- C/C++: `clang-format`

Format with `<leader>f` or on save.

### Completion

Uses blink.cmp with LuaSnip for snippets. Accept with `Ctrl+Y`, toggle menu with `Ctrl+Space`.

## Keybinding Conventions

Leader key is Space. Main groups:

- `<leader>s*` - Search (telescope): `sf` files, `sg` grep, `sw` word, `sk` keymaps
- `<leader>t*` - Toggle: `th` inlay hints, `tb` git blame
- `<leader>h*` - Git hunks: `hs` stage, `hr` reset, `hp` preview
- `gr*` - LSP: `grn` rename, `gra` code action, `grr` references, `grd` definition
- `<leader>e` - Open file explorer (oil.nvim)
- `<leader>f` - Format buffer
- `<leader>b/B` - Set breakpoint / conditional breakpoint
- `F5` - Debug continue, `F1-3` - Step in/over/out

Tmux navigation: `Ctrl+hjkl` works seamlessly between Neovim and tmux panes.

## Custom Plugins

- **oil.nvim** - File explorer accessed via `<leader>e`
- **crates.nvim** - Cargo.toml dependency management (`<leader>c*` bindings)
- **rust-debug** - DAP configuration for Rust with codelldb
- **nvim-tmux-navigation** - Seamless Ctrl+hjkl navigation with tmux
- **sg.nvim** - Sourcegraph integration

## Colorscheme

github_dark_high_contrast
