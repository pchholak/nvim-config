# nvim custom config

## TreeSitter
Install the following dependencies:
- node / npm
- ripgrep
- tree-sitter / tree-sitter-cli

### macOS
```
brew install node ripgrep tree-sitter tree-sitter-cli
```

### Debian
```
sudo apt install nodejs npm ripgrep
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # install cargo
cargo install --locked tree-sitter-cli
```

### Fedora
```
sudo dnf install npm
```

## Clipboard
For linux systems, install the external clipboard provider, based on the Display System (e.g., wayland, xclip).
```bash
# Debian 12
sudo apt install wl-clipboard

# Fedora 44
sudo dnf install wl-clipboard
```
