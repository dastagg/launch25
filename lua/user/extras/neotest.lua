local M = {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- language specific tests
    "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-go",
  },
}

function M.config()
  local wk = require("which-key")
  wk.add({
    { "<leader>tS", "<cmd>Neotest summary<cr>", desc = "View summary" },
    { "<leader>ta", "<cmd>lua require('neotest').run.attach()<cr>", desc = "Attach Test" },
    { "<leader>td", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Debug Test" },
    { "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Test File" },
    { "<leader>ts", "<cmd>lua require('neotest').run.stop()<cr>", desc = "Test Stop" },
    { "<leader>tt", "<cmd>lua require'neotest'.run.run()<cr>", desc = "Test Nearest" },
  })

  ---@diagnostic disable: missing-fields
  require("neotest").setup({
    -- log_level = vim.log.levels.DEBUG,
    adapters = {
      require("neotest-go")({}),
      require("neotest-python")({}),
    },
  })
end

return M
