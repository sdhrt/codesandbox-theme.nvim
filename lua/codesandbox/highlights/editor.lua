local M = {}

function M.setup(c)
  return {
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_light },
    NormalNC = { fg = c.fg, bg = c.bg },
    Cursor = { fg = c.bg, bg = c.fg },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { bg = c.bg_highlight },
    ColorColumn = { bg = c.bg_highlight },
    LineNr = { fg = c.line_nr },
    CursorLineNr = { fg = c.line_nr_active },
    SignColumn = { fg = c.fg_muted, bg = c.bg },
    VertSplit = { fg = c.bg_dark },
    WinSeparator = { fg = c.bg_dark },
    Folded = { fg = c.comment, bg = c.bg_highlight },
    FoldColumn = { fg = c.comment, bg = c.bg },
    NonText = { fg = c.comment },
    SpecialKey = { fg = c.punctuation },
    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    Search = { fg = c.bg_dark, bg = c.accent },
    IncSearch = { fg = c.bg_dark, bg = c.accent_hover },
    CurSearch = { fg = c.bg_dark, bg = c.accent_hover },
    Substitute = { fg = c.bg_dark, bg = c.error },
    MatchParen = { fg = c.accent, bold = true },
    ModeMsg = { fg = c.fg },
    MoreMsg = { fg = c.green_light },
    Question = { fg = c.green_light },
    Conceal = { fg = c.comment },
    Directory = { fg = c.cyan },
    Title = { fg = c.purple, bold = true },
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warning },
    WildMenu = { fg = c.bg_dark, bg = c.accent },

    -- Pmenu
    Pmenu = { fg = c.fg, bg = c.bg_light },
    PmenuSel = { fg = c.fg_bright, bg = c.bg_visual },
    PmenuSbar = { bg = c.bg_highlight },
    PmenuThumb = { bg = c.fg_dark },

    -- Tabline
    TabLine = { fg = c.fg_muted, bg = c.bg_dark },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { fg = c.fg, bg = c.bg },

    -- Statusline
    StatusLine = { fg = c.fg_dark, bg = c.bg_dark },
    StatusLineNC = { fg = c.comment, bg = c.bg_dark },

    -- Float / Window
    FloatBorder = { fg = c.fg_dark, bg = c.bg_light },
    FloatTitle = { fg = c.purple, bg = c.bg_light },
    WinBar = { fg = c.fg_muted, bg = c.bg },
    WinBarNC = { fg = c.comment, bg = c.bg },

    -- Diff
    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_delete },
    DiffText = { bg = c.diff_text },
    diffAdded = { fg = c.git_add },
    diffRemoved = { fg = c.git_delete },
    diffChanged = { fg = c.git_change },

    -- Diagnostics
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticUnderlineError = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
    DiagnosticVirtualTextError = { fg = c.error, bg = c.diag_error_bg },
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = c.diag_warn_bg },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = c.diag_info_bg },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = c.diag_hint_bg },
  }
end

return M
