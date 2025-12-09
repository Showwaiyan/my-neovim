# My Neovim Configuration

A modern, modular Neovim setup using Lazy.nvim plugin manager with a focus on development and general programming.

## ✨ Features

- **Modern Plugin Management** - Uses [Lazy.nvim](https://github.com/folke/lazy.nvim) for efficient plugin loading
- **LSP Support** - Full Language Server Protocol integration with auto-completion
- **Git Integration** - Comprehensive git workflow with conflict resolution
- **Debugging** - Built-in DAP support for multiple programming languages
- **Terminal Integration** - Floating terminal and tmux navigation
- **AI Coding Assistant** - OpenCode integration for AI-powered coding help
- **Discord Rich Presence** - Show your coding activity on Discord
- **Remote Development** - Remote-neovim plugin for remote machine development
- **Project Bootstrapping** - Quick project setup for multiple frameworks
- **PlatformIO Support** - Embedded development with PlatformIO integration

## 📋 Requirements

- Neovim >= 0.8.0
- Git
- Node.js (for some LSP servers)

## 🚀 Installation

1. **Backup your existing Neovim configuration:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. **Clone this repository:**
   ```bash
   git clone https://github.com/yourusername/my-neovim.git ~/.config/nvim
   ```

3. **Start Neovim:**
   ```bash
   nvim
   ```

4. **Install plugins:**
   Lazy.nvim will automatically install all plugins on first launch.

## 🎯 Project Bootstrapping

This configuration includes a powerful project bootstrapping utility accessible via `<leader>p`. It supports:

**Frontend Frameworks:**
- Next.js, React, Vite, Astro, SvelteKit, Nuxt.js, Nue

**Backend Frameworks:**
- Express.js, Fastify, NestJS, Laravel (with Breeze/Jetstream kits), Spring Boot, Flask, Django

**Fullstack:**
- Remix, T3 Stack

**Python Environments:**
- uv, venv, conda

**.NET/C# Projects:**
- Console Apps, ASP.NET Core (Web API, MVC, Blazor), MAUI, WPF, Windows Forms
- Test projects (xUnit, NUnit, MSTest)

**Mobile:**
- React Native, Flutter

The bootstrapper automatically:
- Creates project directories
- Runs initialization commands
- Offers to initialize git repository
- Changes to the project directory

## 🔧 Plugin Overview

### Core Functionality
- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** - Plugin manager
- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File explorer
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting

### LSP & Development
- **[Mason](https://github.com/williamboman/mason.nvim)** - LSP installer
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configurations
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Auto-completion
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine
- **[lsp_signature](https://github.com/ray-x/lsp_signature.nvim)** - Function signature help
- **[none-ls](https://github.com/nvimtools/none-ls.nvim)** - Formatting and linting
- **[roslyn.nvim](https://github.com/seblyng/roslyn.nvim)** - C# LSP support
- **[nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls)** - Java LSP support
- **[springboot-nvim](https://github.com/elmcgill/springboot-nvim)** - Spring Boot development tools

### Git Integration
- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)** - Git decorations
- **[vim-fugitive](https://github.com/tpope/vim-fugitive)** - Git commands
- **[git-conflict](https://github.com/akinsho/git-conflict.nvim)** - Merge conflict resolution
- **[diffview](https://github.com/sindrets/diffview.nvim)** - Git diff viewer

### UI & Theme
- **[Catppuccin](https://github.com/catppuccin/nvim)** - Color scheme
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)** - Status line
- **[Alpha](https://github.com/goolord/alpha-nvim)** - Start screen

### Productivity
- **[Flash](https://github.com/folke/flash.nvim)** - Enhanced navigation
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto close brackets
- **[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)** - Auto close HTML tags
- **[auto-save](https://github.com/okuuva/auto-save.nvim)** - Automatic file saving
- **[checkmate](https://github.com/bngarren/checkmate.nvim)** - Markdown todo list manager

### Development Tools
- **[nvim-dap](https://github.com/mfussenegger/nvim-dap)** - Debug Adapter Protocol with support for:
  - JavaScript/Node.js (pwa-node)
  - Python (debugpy)
  - C/C++/Rust (codelldb)
- **[nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)** - UI for nvim-dap
- **[opencode.nvim](https://github.com/NickvanDyke/opencode.nvim)** - AI-powered coding assistant integration
- **[web-tools](https://github.com/ray-x/web-tools.nvim)** - Web development utilities
- **[remote-nvim](https://github.com/amitds1997/remote-nvim.nvim)** - Remote machine development
- **[endpoint-nvim](https://github.com/zerochae/endpoint.nvim)** - API route finder
- **[markview-nvim](https://github.com/OXY2DEV/markview.nvim)** - Markdown renderer inside Nvim
- **[nvim-platformio](https://github.com/anurag3301/nvim-platformio.lua)** - PlatformIO integration for embedded development
- **[resu.nvim](https://github.com/koushikxd/resu.nvim)** - Session management

### Terminal & Navigation
- **[neaterm](https://github.com/Dan7h3x/neaterm.nvim)** - Floating terminal with customizable keymaps
- **[Fine Command Line](https://github.com/VonHeikemen/fine-cmdline.nvim)** - Floating vim command mode
- **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)** - Seamless tmux navigation
- **[nvim-window](https://github.com/yorickpeterse/nvim-window)** - Window picker

### UI & Notifications
- **[nvim-notify](https://github.com/rcarriga/nvim-notify)** - Beautiful notification manager
- **[presence.nvim](https://github.com/andweeb/presence.nvim)** - Discord Rich Presence integration

## ⌨️ Key Mappings

### General
- `<Space>` - Leader key
- `\` - Local leader key
- `<Esc>` - Clear search highlight
- `jk` (in insert mode) - Exit insert mode
- `:` - Open Fine Command Line (floating command mode)

### File & Project Management
- `<leader>ff` - Find files (Telescope)
- `<leader>fg` - Live grep (Telescope)
- `<leader>n` - Toggle file explorer (Neo-tree)
- `<leader>p` - Bootstrap new project (interactive framework selector)

### Completion (Insert Mode)
- `<C-Space>` - Trigger completion
- `<C-b>` - Scroll docs up
- `<C-f>` - Scroll docs down
- `<C-e>` - Abort completion
- `<CR>` - Confirm selection

### LSP
- `gd` - Go to definition
- `gD` - Go to declaration
- `K` - Hover documentation
- `<C-s>` (in insert mode) - Toggle signature help
- `gi` - Go to implementation
- `<leader>D` - Go to type definition
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions (normal & visual mode)
- `gr` - Show references
- `<leader>f` - Format buffer
- `<leader>e` - Show diagnostics in floating window
- `[d` - Go to previous diagnostic
- `]d` - Go to next diagnostic

### Git
- `<leader>gp` - Preview hunk (Gitsigns)
- `<leader>gt` - Toggle line blame (Gitsigns)
- `<leader>go` - Open Diffview
- `<leader>gf` - Diffview focus files
- `<leader>gc` - Close Diffview

**Git Conflict Resolution** (when conflicts detected):
- `cww` - Start conflict resolution mode
- `co` - Choose ours
- `ct` - Choose theirs
- `cb` - Choose both
- `c0` - Choose none
- `]x` - Move to next conflict
- `[x` - Move to previous conflict

### Debugging (DAP)
- `<leader>dt` - Toggle breakpoint
- `<leader>dc` - Continue debugging
- `<leader>do` - Step over
- `<leader>di` - Step into
- `<leader>du` - Step out

**Debug Adapters Configured:**
- JavaScript/Node.js (js-debug-adapter)
- Python (debugpy)
- C/C++/Rust (codelldb)

### Java/Spring Boot Development
- `<leader>Jr` - Spring Boot run project
- `<leader>Jc` - Generate Java class
- `<leader>Ji` - Generate Java interface
- `<leader>Je` - Generate Java enum

### PlatformIO (Embedded Development)
- `<leader>\` - Open PlatformIO menu (when platformio.ini exists)

### Terminal
- `<leader>tt` - Toggle floating terminal (neaterm)
- `<C-A-Up>` - Move terminal up (when in terminal)
- `<C-h/j/k/l>` - Navigate between tmux/vim panes

### Navigation & Window Management
- `s` - Flash jump (normal, visual, operator-pending)
- `S` - Flash treesitter (normal, visual, operator-pending)
- `r` - Remote flash (operator-pending)
- `R` - Treesitter search (operator-pending, visual)
- `<C-s>` (command mode) - Toggle flash search
- `<leader>w` - Pick window (quick window switcher)

### OpenCode (AI Assistant)
- `<leader>oa` - Ask OpenCode with `@this:` context
- `<leader>os` - Select OpenCode action
- `<leader>op` - Add current context to OpenCode prompt
- `<leader>ot` - Toggle OpenCode terminal (works in normal and terminal mode)
- `<leader>ou` - Scroll OpenCode session half page up
- `<leader>od` - Scroll OpenCode session half page down

### API Development
- `:Endpoint` - Find and navigate to API routes in your project

## 🛠️ Language Support

This configuration provides extensive language support through LSP servers, formatters, and debuggers. Language servers are automatically installed via Mason and include:

**Pre-configured Languages:**
- **Lua** - lua_ls with stylua formatter
- **JavaScript/TypeScript** - ts_ls with ESLint
- **HTML/CSS** - html, cssls with emmet support
- **JSON** - jsonls
- **Python** - pylsp with debugpy debugging
- **C/C++** - clangd with codelldb debugging
- **C#** - csharp_ls and Roslyn LSP
- **Java** - jdtls with Spring Boot support
- **Docker** - dockerls and docker-compose-language-service

**Debugging Support:**
- JavaScript/Node.js via js-debug-adapter
- Python via debugpy
- C/C++/Rust via codelldb

**To add support for new languages:**
1. Install the language server via `:Mason`
2. Configure it in `lua/plugins/lsp-config.lua`
3. Add formatters/linters in `lua/plugins/none-ls.lua` if needed
4. Set up debugging configuration in `lua/plugins/debugger.lua` if required

## 📁 File Structure

The configuration follows a modular structure:

```
~/.config/nvim/
├── init.lua                    # Main entry point, bootstraps lazy.nvim
├── lua/
│   ├── vim-options.lua        # General Neovim settings
│   ├── utils.lua              # Utility functions (project bootstrap, code runner)
│   └── plugins/               # Plugin configurations (each file is a plugin spec)
│       ├── lsp-config.lua     # LSP configurations
│       ├── completions.lua    # Auto-completion setup
│       ├── debugger.lua       # DAP debugging setup
│       ├── telescope.lua      # Fuzzy finder
│       ├── neo-tree.lua       # File explorer
│       ├── treesitter.lua     # Syntax highlighting
│       ├── git-for-neovim.lua # Git integrations
│       ├── theme.lua          # Color scheme
│       ├── alpha.lua          # Start screen
│       ├── neaterm.lua        # Terminal
│       ├── flash.lua          # Navigation
│       └── ...                # Other plugins
└── ftplugin/
    └── java.lua               # Java-specific settings
```

Each plugin file in `lua/plugins/` returns a table/array of plugin specifications that Lazy.nvim automatically loads.

## 🎨 Customization

To customize this configuration:

1. **Add new plugins** - Create a new file in `lua/plugins/` that returns a plugin spec table
2. **Modify keymaps** - Edit the relevant plugin config files or `lua/vim-options.lua`
3. **Change theme** - Modify `lua/plugins/theme.lua`
4. **Add LSP servers** - Update `lua/plugins/lsp-config.lua` and ensure installed via `:Mason`
5. **Customize project bootstrapping** - Edit `lua/utils.lua` to add/modify framework templates
6. **Configure debuggers** - Add new debug adapters in `lua/plugins/debugger.lua`

## 🐛 Troubleshooting

- **Plugins not loading:** Run `:Lazy sync` to update plugins
- **LSP not working:** Check `:Mason` to ensure language servers are installed
- **Signature help not showing:** Press `<C-s>` in insert mode to toggle signature window
- **Formatting issues:** Verify formatters are installed via Mason
- **Git features not working:** Ensure you're in a git repository
- **Debugger not starting:** Check debug adapter paths in `lua/plugins/debugger.lua`
- **PlatformIO not loading:** Ensure `platformio.ini` exists in your project root or run `:Pioinit`
- **Discord presence not working:** Make sure Discord is running and accepting rich presence
- **Terminal keybinds not working:** Check `lua/plugins/neaterm.lua` for current bindings
- **Check health:** Run `:checkhealth` to diagnose configuration issues

## 🚀 Quick Commands Reference

- `:Lazy` - Plugin manager UI
- `:Mason` - LSP/DAP/Linter installer UI
- `:checkhealth` - Check Neovim configuration health
- `:Telescope` - Open Telescope picker
- `:Endpoint` - Find API routes in project
- `:Pioinit` - Initialize PlatformIO in current directory
- `:DiffviewOpen` - Open git diff view
- `:RemoteStart` - Start remote development session
