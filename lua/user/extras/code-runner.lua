local M = {
  "CRAG666/code_runner.nvim",
  opts = {
    mode = "float",
  },
}

M.config = function()
  local wk = require("which-key")
  wk.add({
    { "<leader>rf", "<cmd>RunFile toggleterm<cr>", desc = "Run File" },
    { "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
  })

  require("code_runner").setup({
    filetype = {
      python = "cd '$dir' && python -u '$dir/$fileName'",
      go = "go run",
    },
  })
end

-- vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
return M
