local M = {}

function M.setup(c)
  return {
    Comment = { fg = c.comment, italic = true },
    Constant = { fg = c.cyan },
    String = { fg = c.green_olive },
    Character = { fg = c.green_olive },
    Number = { fg = c.cyan },
    Boolean = { fg = c.cyan },
    Float = { fg = c.cyan },
    Identifier = { fg = c.fg_bright },
    Function = { fg = c.green_lime },
    Statement = { fg = c.purple },
    Conditional = { fg = c.purple },
    Repeat = { fg = c.purple },
    Label = { fg = c.purple },
    Operator = { fg = c.green_light },
    Keyword = { fg = c.purple },
    Exception = { fg = c.purple },
    PreProc = { fg = c.purple },
    Include = { fg = c.purple },
    Define = { fg = c.purple },
    Macro = { fg = c.purple },
    PreCondit = { fg = c.purple },
    Type = { fg = c.cyan },
    StorageClass = { fg = c.purple },
    Structure = { fg = c.cyan },
    Typedef = { fg = c.cyan },
    Special = { fg = c.cyan },
    SpecialChar = { fg = c.green_olive },
    Tag = { fg = c.purple },
    Delimiter = { fg = c.punctuation },
    SpecialComment = { fg = c.comment },
    Debug = { fg = c.warning },
    Underlined = { underline = true },
    Error = { fg = c.error },
    Todo = { fg = c.accent, bold = true },
  }
end

return M
