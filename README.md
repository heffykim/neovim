# My Work Neovim Configuration

## Motiviation

I was using LazyVim for awhile and noticed some of the plugins just weren't for me.
I decided to roll my own, "lightweight" neovim configuration. Its currently using the latest
Neovim 0.11 `lsp`

## Installation

1. Install Neovim 0.11 or newer
2. Install the dependencies in `init.lua`

## Plugins

| Name                        | Purpose                                                                 |
| --------------------------- | ----------------------------------------------------------------------- |
| **lazy.nvim**               | package manager                                                         |
| **fzf-lua.nvim**            | find, filter, preview, pick                                             |
| **nvim-treesitter**         | parser/syntax highlighting                                              |
| **nvim-treesitter-context** | shows current line context                                              |
| **nvim-treesitter-object**  | ???                                                                     |
| **lualine.nvim**            | status line                                                             |
| **gitsigns.nvim**           | git change indicator                                                    |
| **which-key.nvim**          | show key binds                                                          |
| **conform.nvim**            | formatter configuration, replace for `null-ls`                          |
| **mason.nvim**              | install/manage LSP/DAP servers, linters and formatters                  |
| **todo-comments.nvim**      | highlights notes, fixme and makes them findable                         |
| **nvim-lint**               | narrow-scope linter plugin to use vianeovim diagonstic framework (0.11) |
| **blink.cmp**               | fuzzy code completion                                                   |
| **diffview.nvim**           | git diff viewer/stager                                                  |
| **vim-fugitive**            | git wrapper for neovim                                                  |
