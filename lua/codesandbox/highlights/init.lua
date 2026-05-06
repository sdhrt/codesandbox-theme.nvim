local M = {}

function M.setup(colors)
  local hl = {}

  local modules = {
    "codesandbox.highlights.editor",
    "codesandbox.highlights.syntax",
    "codesandbox.highlights.treesitter",
    "codesandbox.highlights.lsp",
    "codesandbox.highlights.plugins",
  }

  for _, mod in ipairs(modules) do
    local groups = require(mod).setup(colors)
    for group, opts in pairs(groups) do
      hl[group] = opts
    end
  end

  return hl
end

return M
