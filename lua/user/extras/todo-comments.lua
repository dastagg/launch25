local M = {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  local todo_comments = require("todo-comments")

  -- set keymaps
  local wk = require("which-key")
  wk.add({
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find todos" },
  })

  local keymap = vim.keymap -- for conciseness

  keymap.set("n", "]t", function()
    todo_comments.jump_next()
  end, { desc = "Next todo comment" })

  keymap.set("n", "[t", function()
    todo_comments.jump_prev()
  end, { desc = "Previous todo comment" })

  todo_comments.setup()
end

return M
