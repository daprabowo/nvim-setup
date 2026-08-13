<p align="center">
  <img src="assets/neovim.png" width="40%">
</p>

# Neovim Setup

A modern, minimal yet powerful Neovim configuration built with Lua, designed for speed, productivity, and a great developer experience.

## Features

- **Modular Lua config** — Easy to read, extend, and maintain
- **Beautiful UI** — Gruvbox theme with `lualine`, and `dashboard-nvim`
- **Fast startup** — Lazy-loaded plugins with `packer.nvim`
- **LSP and Autocompletion** — Powered by `nvim-lspconfig`, `cmp`, and `mason`
- **Fuzzy finding** — Blazingly fast file search with `telescope.nvim`
- **Formatters & Linters** — Managed via `null-ls` and `mason-null-ls`
- **Syntax highlighting** — Tree-sitter for robust and accurate highlighting
- **Git integration** — Git signs and status with `gitsigns.nvim` and `diffview.nvim`
- **File Explorer** — With `nvim-tree.lua` and custom keybindings
- **Session management**, dashboard, and more

## Installation

1. Clone this repo to your dotfile directory:

```sh-session
git clone git@github.com:98prabowo/nvim-setup.git
```

2. Link Neovim setup files to config directory:

```sh-session
make link
```

3. Start Neovim:

```sh-session
nvim
```

4. Update Neovim dependency and setup (run inside vim script):

```vim
:Lazy sync
```

5. Restart Neovim and enjoy!

## Dependencies

- Neovim >= 0.8 (or 0.10+ for Mason 2.x)
- Git
- Rust (for Rust LSP)
- Go (for Go LSP)
- Node.js / npm (for some LSPs or formatters)
- Python (optional, for Python LSP)
- Ruby (optional, for Ruby LSP)
- ripgrep, fd, etc. for telescope
- unzip, wget, curl, gzip, tar, etc. for mason.

## Key Bindings

|       Action       |     Key      |
| :----------------: | :----------: |
|    File search     | `<leader>ff` |
|     Live grep      | `<leader>fs` |
| Open file explorer | `<leader>e`  |

## Screenshots

![Screenshot](assets/dimvim-dashboard.png)

## License

MIT License. Feel free to use, fork, and modify.
