## Neovim

### Prerequisites

- Neovim 0.12+
- curl
- git
- ripgrep
- tar
- tree-sitter-cli

### Keybindings

I haven't hammered those out yet, but my plan is to strip as many non-motion keybinds from Neovim and plugins as possible, and re-create them from scratch for exactly my workflow. I have a doc started that tracks my most commonly used ones so far, but I'm still months away from this.

### Plugins

A big reason for the Neovim 0.12+ requirement is that I'm a minimalist plugin user (other than what I create myself). So, a native package manager was crucial.

The bulk of my plugins are related to LSPs, Treesitter, and fast ways to navigate my files.

### Themes

Before creating my own theme "[Dexco](https://github.com/robotpajamas/dexco.nvim)", which [I've written about here](https://sureshjoshi.com/development/dexco-neovim-colourscheme), I started off using [Tokyo Night](https://github.com/folke/tokyonight.nvim) and I briefly experimented with [Synthweave](https://github.com/samharju/synthweave.nvim).

I prefer mine, but Tokyo Night is an all-time classic, and Synthweave works well depending on the language you're programming in.
