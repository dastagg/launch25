local M = {
  "danymat/neogen",
  config = true,
  version = "*",
}

M.config = function()
  local wk = require("which-key")
  wk.add({
    { "<leader>n", group = "Neogen" },
    { "<leader>nf", "<cmd>lua require('neogen').generate()<CR>", desc = "Create Docstring" },
  })

  require("neogen").setup({})
end

return M
