local M = {}

function M.setup(c)
  return {
    -- LSP references
    LspReferenceText = { bg = c.bg_highlight },
    LspReferenceRead = { bg = c.bg_highlight },
    LspReferenceWrite = { bg = c.bg_highlight },
    LspSignatureActiveParameter = { fg = c.accent, bold = true },

    -- Semantic tokens
    ["@lsp.type.class"] = { fg = c.cyan },
    ["@lsp.type.decorator"] = { fg = c.green_lime },
    ["@lsp.type.enum"] = { fg = c.cyan },
    ["@lsp.type.enumMember"] = { fg = c.cyan },
    ["@lsp.type.function"] = { fg = c.green_lime },
    ["@lsp.type.interface"] = { fg = c.cyan },
    ["@lsp.type.macro"] = { fg = c.green_lime },
    ["@lsp.type.method"] = { fg = c.green_lime },
    ["@lsp.type.namespace"] = { fg = c.purple_light },
    ["@lsp.type.parameter"] = { fg = c.fg_bright },
    ["@lsp.type.property"] = { fg = c.fg_bright },
    ["@lsp.type.struct"] = { fg = c.cyan },
    ["@lsp.type.type"] = { fg = c.cyan },
    ["@lsp.type.typeParameter"] = { fg = c.cyan },
    ["@lsp.type.variable"] = { fg = c.fg_bright },
    ["@lsp.mod.defaultLibrary"] = { fg = c.purple },
  }
end

return M
