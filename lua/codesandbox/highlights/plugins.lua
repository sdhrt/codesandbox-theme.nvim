local M = {}

function M.setup(c)
  return {
    -- Gitsigns
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },

    -- Telescope
    TelescopeNormal = { fg = c.fg, bg = c.bg },
    TelescopeBorder = { fg = c.fg_dark, bg = c.bg },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_highlight },
    TelescopePromptBorder = { fg = c.bg_highlight, bg = c.bg_highlight },
    TelescopePromptTitle = { fg = c.bg_dark, bg = c.accent },
    TelescopePreviewTitle = { fg = c.bg_dark, bg = c.green_light },
    TelescopeResultsTitle = { fg = c.bg, bg = c.bg },
    TelescopeSelection = { fg = c.fg_bright, bg = c.bg_highlight },
    TelescopeMatching = { fg = c.accent, bold = true },

    -- Nvim-tree
    NvimTreeNormal = { fg = c.fg_muted, bg = c.bg_dark },
    NvimTreeRootFolder = { fg = c.fg, bold = true },
    NvimTreeFolderIcon = { fg = c.purple },
    NvimTreeFolderName = { fg = c.fg_muted },
    NvimTreeOpenedFolderName = { fg = c.fg },
    NvimTreeGitDirty = { fg = c.git_change },
    NvimTreeGitNew = { fg = c.git_add },
    NvimTreeGitDeleted = { fg = c.git_delete },
    NvimTreeSpecialFile = { fg = c.accent },
    NvimTreeIndentMarker = { fg = c.git_ignored },
    NvimTreeWinSeparator = { fg = c.bg_dark, bg = c.bg_dark },

    -- Neo-tree
    NeoTreeNormal = { fg = c.fg_muted, bg = c.bg_dark },
    NeoTreeNormalNC = { fg = c.fg_muted, bg = c.bg_dark },
    NeoTreeDirectoryName = { fg = c.fg_muted },
    NeoTreeDirectoryIcon = { fg = c.purple },
    NeoTreeRootName = { fg = c.fg, bold = true },
    NeoTreeGitAdded = { fg = c.git_add },
    NeoTreeGitModified = { fg = c.git_change },
    NeoTreeGitDeleted = { fg = c.git_delete },
    NeoTreeGitConflict = { fg = c.git_conflict },
    NeoTreeWinSeparator = { fg = c.bg_dark, bg = c.bg_dark },

    -- Indent-blankline
    IblIndent = { fg = c.bg_highlight },
    IblScope = { fg = c.purple },

    -- Lazy
    LazyButton = { fg = c.fg, bg = c.bg_highlight },
    LazyButtonActive = { fg = c.bg_dark, bg = c.accent },
    LazyH1 = { fg = c.bg_dark, bg = c.accent, bold = true },

    -- Which-key
    WhichKey = { fg = c.green_lime },
    WhichKeyGroup = { fg = c.purple },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyValue = { fg = c.fg_muted },

    -- Noice
    NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_light },
    NoiceCmdlinePopupBorder = { fg = c.fg_dark },

    -- Notify
    NotifyERRORBorder = { fg = c.error },
    NotifyWARNBorder = { fg = c.warning },
    NotifyINFOBorder = { fg = c.info },
    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },

    -- Mini
    MiniStatuslineFilename = { fg = c.fg_muted, bg = c.bg_highlight },
    MiniStatuslineFileinfo = { fg = c.fg_muted, bg = c.bg_highlight },
    MiniStatuslineModeNormal = { fg = c.bg_dark, bg = c.accent, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg_dark, bg = c.green_lime, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg_dark, bg = c.purple, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg_dark, bg = c.warning, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg_dark, bg = c.error, bold = true },

    -- Cmp
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrMatch = { fg = c.accent, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.accent },
    CmpItemKindFunction = { fg = c.green_lime },
    CmpItemKindMethod = { fg = c.green_lime },
    CmpItemKindVariable = { fg = c.fg_bright },
    CmpItemKindKeyword = { fg = c.purple },
    CmpItemKindText = { fg = c.fg_muted },
    CmpItemKindClass = { fg = c.cyan },
    CmpItemKindInterface = { fg = c.cyan },
    CmpItemKindStruct = { fg = c.cyan },
    CmpItemKindProperty = { fg = c.fg_bright },
    CmpItemKindField = { fg = c.fg_bright },
    CmpItemKindEnum = { fg = c.cyan },
    CmpItemKindSnippet = { fg = c.green_olive },
    CmpItemKindConstant = { fg = c.cyan },
    CmpItemKindModule = { fg = c.purple_light },
    CmpItemKindOperator = { fg = c.green_light },
    CmpItemKindTypeParameter = { fg = c.cyan },

    -- Blink.cmp
    BlinkCmpMenu = { fg = c.fg, bg = c.bg_light },
    BlinkCmpMenuBorder = { fg = c.fg_dark, bg = c.bg_light },
    BlinkCmpMenuSelection = { bg = c.bg_visual },
    BlinkCmpLabel = { fg = c.fg },
    BlinkCmpLabelMatch = { fg = c.accent, bold = true },
    BlinkCmpKindFunction = { fg = c.green_lime },
    BlinkCmpKindMethod = { fg = c.green_lime },
    BlinkCmpKindVariable = { fg = c.fg_bright },
    BlinkCmpKindKeyword = { fg = c.purple },
    BlinkCmpKindClass = { fg = c.cyan },
    BlinkCmpKindInterface = { fg = c.cyan },
    BlinkCmpKindStruct = { fg = c.cyan },
    BlinkCmpKindModule = { fg = c.purple_light },
    BlinkCmpKindProperty = { fg = c.fg_bright },
    BlinkCmpKindField = { fg = c.fg_bright },
    BlinkCmpKindEnum = { fg = c.cyan },
    BlinkCmpKindSnippet = { fg = c.green_olive },
    BlinkCmpKindConstant = { fg = c.cyan },
    BlinkCmpKindText = { fg = c.fg_muted },
  }
end

return M
