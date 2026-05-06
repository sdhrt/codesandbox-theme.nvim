local M = {}

local defaults = {
  undercurl = true,
  transparent = false,
  dimInactive = false,
  terminalColors = true,
  commentStyle = { italic = true },
  keywordStyle = {},
  functionStyle = {},
  typeStyle = {},
  colors = {},
  overrides = function()
    return {}
  end,
}

M.config = defaults

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", defaults, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "codesandbox"

  local colors_mod = require("codesandbox.colors")
  local palette = vim.tbl_deep_extend("force", colors_mod.palette, M.config.colors)

  -- Apply style overrides
  local config = M.config

  local highlights = require("codesandbox.highlights")
  local hl_groups = highlights.setup(palette)

  -- Apply config style overrides
  if hl_groups.Comment then
    hl_groups.Comment = vim.tbl_extend("force", hl_groups.Comment, config.commentStyle)
  end
  if hl_groups["@comment"] then
    hl_groups["@comment"] = vim.tbl_extend("force", hl_groups["@comment"], config.commentStyle)
  end
  if hl_groups.Function then
    hl_groups.Function = vim.tbl_extend("force", hl_groups.Function, config.functionStyle)
  end
  if hl_groups.Keyword then
    hl_groups.Keyword = vim.tbl_extend("force", hl_groups.Keyword, config.keywordStyle)
  end
  if hl_groups.Type then
    hl_groups.Type = vim.tbl_extend("force", hl_groups.Type, config.typeStyle)
  end

  -- Transparent background
  if config.transparent then
    hl_groups.Normal = { fg = palette.fg, bg = "NONE" }
    hl_groups.NormalNC = { fg = palette.fg, bg = "NONE" }
    hl_groups.NormalFloat = { fg = palette.fg, bg = "NONE" }
    hl_groups.SignColumn = { fg = palette.fg_muted, bg = "NONE" }
    hl_groups.FoldColumn = { fg = palette.comment, bg = "NONE" }
  end

  -- Dim inactive windows
  if config.dimInactive then
    hl_groups.NormalNC = { fg = palette.fg_muted, bg = palette.bg_dark }
  end

  -- User overrides
  local user_overrides = config.overrides(palette)
  for group, opts in pairs(user_overrides) do
    hl_groups[group] = opts
  end

  for group, opts in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Terminal colors
  if config.terminalColors then
    vim.g.terminal_color_0 = palette.bg_dark
    vim.g.terminal_color_1 = palette.error
    vim.g.terminal_color_2 = palette.green_olive
    vim.g.terminal_color_3 = palette.warning
    vim.g.terminal_color_4 = palette.cyan
    vim.g.terminal_color_5 = palette.purple
    vim.g.terminal_color_6 = palette.cyan
    vim.g.terminal_color_7 = palette.fg
    vim.g.terminal_color_8 = palette.comment
    vim.g.terminal_color_9 = palette.error
    vim.g.terminal_color_10 = palette.green_lime
    vim.g.terminal_color_11 = palette.accent
    vim.g.terminal_color_12 = palette.cyan
    vim.g.terminal_color_13 = palette.purple_light
    vim.g.terminal_color_14 = palette.green_light
    vim.g.terminal_color_15 = palette.fg_bright
  end
end

return M
