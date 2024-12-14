local M = {
  "HiPhish/rainbow-delimiters.nvim",
}

function M.config()
  require("rainbow-delimiters.setup").setup({

    highlight = {
      "RainbowDelimiterCyan",
      "RainbowDelimiterViolet",
      "RainbowDelimiterGreen",
      "RainbowDelimiterOrange",
      "RainbowDelimiterBlue",
      "RainbowDelimiterYellow",
    },
  })
end

return M
