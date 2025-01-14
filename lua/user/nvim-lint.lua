local M = {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
}

function M.config()
  local lint = require("lint")

  lint.linters_by_ft = {
    javascript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    lua = { "luacheck" },
    python = { "ruff" },
    svelte = { "eslint_d" },
    typescript = { "eslint_d" },
    typescriptreact = { "eslint_d" },
  }

  local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

  vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    group = lint_augroup,
    callback = function()
      lint.try_lint()
    end,
  })

  vim.keymap.set("n", "<leader>bl", function()
    lint.try_lint()
  end, { desc = "Trigger linting for current file" })
end

return M
