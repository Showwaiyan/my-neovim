# My Neovim Configuration

A modern, modular Neovim setup using Lazy.nvim plugin manager with a focus on development and general programming.

## ✨ Features

- **Modern Plugin Management** - Uses [Lazy.nvim](https://github.com/folke/lazy.nvim) for efficient plugin loading
- **LSP Support** - Full Language Server Protocol integration with auto-completion
- **Git Integration** - Comprehensive git workflow with conflict resolution
- **Debugging** - Built-in DAP support for multiple programming languages
- **Terminal Integration** - Floating terminal and tmux navigation
- **Discord Rich Presence** - Show your coding activity on Discord
- **AI Assistant** - AI integration with chat interface
- **Remote Development** - Remote-neovim plugin for remote mechine development

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
- **[none-ls](https://github.com/nvimtools/none-ls.nvim)** - Formatting and linting

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

### Development Tools
- **[nvim-dap](https://github.com/mfussenegger/nvim-dap)** - Debug Adapter Protocol
- **[Copilot](https://github.com/github/copilot.vim)** - AI pair programming
- **[CopilotChat](https://github.com/CopilotC-Nvim/CopilotChat.nvim)** - AI chat interface
- **[web-tools](https://github.com/ray-x/web-tools.nvim)** - Web development utilities
- **[remote-nvim](https://github.com/amitds1997/remote-nvim.nvim.git)** - Remote mechine development
- **[endpoint-nvim](https://github.com/zerochae/endpoint.nvim.git)** - Route finder

### Terminal & Navigation
- **[neaterm](https://github.com/Dan7h3x/neaterm.nvim)** - Floating terminal
- **[Fine Command Line](https://github.com/VonHeikemen/fine-cmdline.nvim.git)** - Floating vim Command mode
- **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)** - Seamless tmux navigation
- **[nvim-window](https://github.com/yorickpeterse/nvim-window)** - Window picker

## ⌨️ Key Mappings

### General
- `<Space>` - Leader key
- `<leader>ff` - Find files (Telescope)
- `<leader>fg` - Live grep (Telescope)
- `<leader>n` - Toggle file explorer (Neo-tree)

### LSP
- `gd` - Go to definition
- `gD` - Go to declaration
- `K` - Hover documentation
- `C-s` - Show Signature
- `gi` - Go to implementation
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `gr` - Show references
- `<leader>f` - Format buffer

### Git
- `<leader>gp` - Preview hunk
- `<leader>gt` - Toggle line blame
- `co` — choose ours
- `ct` — choose theirs
- `cb` — choose both
- `c0` — choose none
- `]x` — move to previous conflict
- `[x` — move to next conflict

### Debugging
- `<leader>dt` - Toggle breakpoint
- `<leader>dc` - Continue
- `<leader>do` - Step over
- `<leader>di` - Step into
- `<leader>du` - Step out

### AI Assistant
- `<leader>ccv` - Toggle Copilot Chat
- `<leader>cci` - Start Copilot Chat
- `<S-Tab>` - Accept Copilot suggestion

### Terminal
- `<leader>tt` - Toggle terminal
- `<C-h/j/k/l>` - Navigate between tmux/vim panes

### Navigation
- `s` - Flash jump
- `S` - Flash treesitter
- `<leader>w` - Pick window

## 🛠️ Language Support

This configuration provides extensive language support through LSP servers, formatters, and debuggers. Language servers and development tools are managed through Mason and can be easily installed for various programming languages including:

To add support for new languages:
1. Install the language server via `:Mason`
2. Configure it in `lua/plugins/lsp-config.lua`
3. Add formatters/linters in `lua/plugins/none-ls.lua` if needed
4. Set up debugging configuration in `lua/plugins/debugger.lua` if required

## 📁 File Structure

The configuration follows a modular structure with the main entry point at `init.lua` and plugin configurations organized in the `lua/plugins/` directory. This allows for easy maintenance and extension of functionality as new plugins and features are added.

## 🎨 Customization

To customize this configuration:

1. **Add new plugins** - Create a new file in `lua/plugins/`
2. **Modify keymaps** - Edit the relevant plugin files or `lua/vim-options.lua`
3. **Change theme** - Modify `lua/plugins/catppuccin.lua`
4. **Add LSP servers** - Update `lua/plugins/lsp-config.lua`

## 🐛 Troubleshooting

- **Plugins not loading:** Run `:Lazy sync` to update plugins
- **LSP not working:** Check `:Mason` to ensure language servers are installed
- **Formatting issues:** Verify formatters are installed via Mason
- **Git features not working:** Ensure you're in a git repository
