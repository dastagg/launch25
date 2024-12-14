local M = {
  "lukas-reineke/indent-blankline.nvim",
}

M.config = function()
  require("ibl").setup({})

  local highlight = {
    "RainbowDelimiterCyan",
    "RainbowDelimiterViolet",
    "RainbowDelimiterGreen",
    "RainbowDelimiterOrange",
    "RainbowDelimiterBlue",
    "RainbowDelimiterYellow",
  }

  vim.g.rainbow_delimiters = { highlight = highlight }
  require("ibl").setup({ scope = { highlight = highlight } })

  local hooks = require("ibl.hooks")
  hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
end

return M
