## NeoVim for Command Line System
- To install:
```
git clone https://github.com/weremax/nvim-basecamp.git ~/.config/nvim
```

### Reason
This is an extremely light weight NeoVim configuration as an editor for my ThinkPad X131e with a minimal Arch Linux install that does not have a GUI (command-line-only system).

### Packages
- packer.nvim - use :PackerSync
- mason :Mason for additional LSPs
- treesitter
- lualine
- telescope
- lsp

Just a very basic functional NeoVim editor style setup for quickly being able to use the system effectively from the command line.

### Specs
System is using iwd's -> iwctl for wifi as the system came with a Broadcom card that had to be compiled and installed in order to use. So if I need to change networks I will need to prompt iwctl on the system to make a new connection thru the terminal. This isn't much of an issue as the commands are very simple and quickly usable. I could have used gruvbox or any other; however, I decided to go with the vscode.nvim. I may explore a more custom styling later if I so choose to but this isn't that immportant at this time.
