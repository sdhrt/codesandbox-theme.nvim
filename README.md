# codesandbox.nvim

A Neovim colorscheme ported from the [CodeSandbox VS Code theme](https://github.com/codesandbox/vscode-theme) by [CodeSandbox](https://codesandbox.io).

Dark theme with a vibrant palette — lime green functions, purple keywords, olive strings, and cyan constants on a deep `#151515` background.

> **Credit:** All color choices and design come from the original [CodeSandbox theme for VS Code](https://github.com/codesandbox/vscode-theme). This is a community port for Neovim.

## Requirements

- Neovim >= 0.8.0
- A terminal with true color support

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "sdhrt/codesandbox-theme.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("codesandbox")
  end,
}
```

## Configuration

Call `setup()` before loading the colorscheme to customize:

```lua
require("codesandbox").setup({
  transparent = false,
  dimInactive = false,
  terminalColors = true,

  commentStyle = { italic = true },
  keywordStyle = {},
  functionStyle = {},
  typeStyle = {},

  colors = {},

  overrides = function(colors)
    return {}
  end,
})

vim.cmd.colorscheme("codesandbox")
```

### Common Recipes

**Transparent background:**

```lua
require("codesandbox").setup({ transparent = true })
```

**Bold keywords and italic functions:**

```lua
require("codesandbox").setup({
  keywordStyle = { bold = true },
  functionStyle = { italic = true },
})
```

**Override specific highlights:**

```lua
require("codesandbox").setup({
  overrides = function(colors)
    return {
      CursorLine = { bg = "#1e1e1e" },
      NormalFloat = { bg = colors.bg_dark },
    }
  end,
})
```

## Color Palette

| Name | Hex | Usage |
|------|-----|-------|
| `bg` | `#151515` | Editor background |
| `bg_dark` | `#000000` | Sidebar, statusline, tabline |
| `fg` | `#e5e5e5` | Default text |
| `fg_bright` | `#ffffff` | Variables, identifiers |
| `purple` | `#A390FF` | Keywords, storage, tags |
| `purple_light` | `#CABEFF` | Attributes, type annotations |
| `green_lime` | `#CDF861` | Functions |
| `green_olive` | `#BFD084` | Strings |
| `green_light` | `#b3e8b4` | Operators |
| `cyan` | `#7AD9FB` | Constants, numbers, types |
| `punctuation` | `#86897A` | Brackets, delimiters |
| `comment` | `#6f6f6f` | Comments |
| `accent` | `#edffa5` | Search, UI accents |
| `error` | `#f48771` | Errors |
| `warning` | `#F7CC66` | Warnings |

## Supported Plugins

- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [mini.statusline](https://github.com/echasnovski/mini.statusline)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [blink.cmp](https://github.com/saghen/blink.cmp)

## Credits

This colorscheme is a direct port of the [CodeSandbox VS Code theme](https://github.com/codesandbox/vscode-theme), created by the team at [CodeSandbox](https://codesandbox.io). All color design and palette decisions originate from their work.

## License

[MIT](LICENSE)
