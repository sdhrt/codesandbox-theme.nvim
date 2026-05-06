local M = {}

M.palette = {
  -- Backgrounds
  bg = "#151515",
  bg_dark = "#111111",
  bg_light = "#252526",
  bg_highlight = "#2a2a2a",
  bg_visual = "#373737",

  -- Foregrounds
  fg = "#e5e5e5",
  fg_muted = "#999999",
  fg_dark = "#808080",
  fg_bright = "#ffffff",

  -- Syntax
  purple = "#A390FF",
  purple_light = "#CABEFF",
  green_lime = "#CDF861",
  green_olive = "#BFD084",
  green_light = "#b3e8b4",
  cyan = "#7AD9FB",
  punctuation = "#86897A",
  comment = "#6f6f6f",

  -- UI accent
  accent = "#edffa5",
  accent_hover = "#dcff50",

  -- Diagnostics
  error = "#f48771",
  warning = "#F7CC66",
  info = "#7AD9FB",
  hint = "#b3e8b4",

  -- Git
  git_add = "#9FE7A0",
  git_change = "#DD763C",
  git_delete = "#C54444",
  git_conflict = "#ED6C6C",
  git_ignored = "#585858",

  -- Editor
  line_nr = "#858585",
  line_nr_active = "#c6c6c6",

  -- Diff backgrounds
  diff_add = "#1a2e1a",
  diff_change = "#2e2a1a",
  diff_delete = "#2e1a1a",
  diff_text = "#3e3a1a",

  -- Diagnostic virtual text backgrounds
  diag_error_bg = "#2e1a1a",
  diag_warn_bg = "#2e2a1a",
  diag_info_bg = "#1a2a2e",
  diag_hint_bg = "#1a2e1a",
}

return M
