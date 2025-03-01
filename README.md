# 🚀 My NvChad Configuration

A highly customized NvChad configuration optimized for web development (TypeScript, React), Go development, and modern development tools.

## ✨ Features

### 📝 Language Support

- **TypeScript/JavaScript**
  - Full LSP support
  - Real-time error checking
  - Auto-formatting
  - Import organization
- **React/JSX/TSX**
  - Component auto-completion
  - Prop type hints
  - Auto-closing tags
- **HTML/CSS**
  - Emmet support
  - Auto-completion
  - Live hints
- **Go**
  - Full LSP integration
  - Auto-imports
  - Format on save
- **Tailwind CSS**
  - Class auto-completion
  - Color previews
  - Class sorting
- **Prisma**
  - Schema validation
  - Auto-formatting
  - Syntax highlighting

### 🛠️ Core Plugins

- **LSP Configuration**
  - Automatic server installation
  - Enhanced diagnostics
  - Code actions
- **Formatting & Linting**
  - Format on save
  - Real-time error checking
  - ESLint integration
- **Git Integration**
  - Inline blame
  - Advanced diffing
  - Branch management
- **Development Tools**
  - Integrated debugging
  - Test runner
  - Quick navigation

## 🔧 Installation

### Prerequisites

2. Install global dependencies:

```bash
# JavaScript/TypeScript tools
npm install -g typescript typescript-language-server prettier eslint_d

# Go tools
go install golang.org/x/tools/gopls@latest
```

### Setup Steps

1. Install NvChad:

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

3. First time setup:

```bash
nvim
# Wait for initial setup to complete
# Run :MasonInstallAll
```

## ⌨️ Key Mappings

### General

- `<leader>` is set to `space`
- `jk` or `kj` - Escape from insert mode
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<C-h/j/k/l>` - Window navigation

### Code Navigation

- `gd` - Go to definition
- `gr` - Find references
- `gi` - Go to implementation
- `<leader>ca` - Code actions
- `K` - Show documentation

### Search

- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find in current buffer
- `<leader>fh` - Help tags

### Git

- `<leader>gg` - Open Fugitive
- `<leader>gd` - Git diff view
- `<leader>gb` - Git blame
- `<leader>gl` - Git log

### Debug

- `<leader>db` - Toggle breakpoint
- `<leader>dc` - Start/continue debug
- `<leader>dt` - Terminate debug

### Testing

- `<leader>tt` - Run nearest test
- `<leader>tf` - Run file tests
- `<leader>ta` - Run all tests

## 📁 Configuration Structure

```
~/.config/nvim/lua/custom/
├── configs/
│   ├── conform.lua   # Formatting settings
│   ├── lint.lua      # Linting configuration
│   └── lspconfig.lua # Language server setup
├── plugins/
│   └── init.lua      # Plugin definitions
└── mappings.lua      # Custom keymaps
```

## 🔄 Updates & Maintenance

### Update Commands

- `:NvChadUpdate` - Update NvChad
- `:TSUpdate` - Update Treesitter parsers
- `:MasonUpdate` - Update LSP servers
- `:Lazy sync` - Update plugins

### Health Checks

- `:checkhealth` - General health check
- `:TSInstallInfo` - Treesitter status
- `:Mason` - LSP server status
- `:LspInfo` - Active LSP info

## 🐛 Troubleshooting

Common issues and solutions:

1. **LSP not working:**

   ```bash
   :LspInfo   # Check server status
   :Mason     # Verify installation
   ```

2. **Formatting issues:**

   ```bash
   :ConformInfo  # Check formatter status
   :echo &ft     # Verify filetype
   ```

3. **Syntax highlighting problems:**
   ```bash
   :TSInstall <language>  # Install parser
   :TSModuleInfo         # Check module status
   ```

## 🎨 Customization

### Adding New Language Support

1. Add language server in `configs/lspconfig.lua`
2. Configure formatter in `configs/conform.lua`
3. Add TreeSitter parser in plugins configuration
4. Install required Mason packages

### Custom Plugin Configuration

Edit `plugins/init.lua` to add or modify plugins:

```lua
return {
  -- Add your plugins here
  {
    "plugin-name",
    config = function()
      -- Your config
    end
  }
}
```

## 📚 Resources

- [NvChad Documentation](https://nvchad.com/)
- [Neovim Documentation](https://neovim.io/doc/)
- [LSP Configuration](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.
