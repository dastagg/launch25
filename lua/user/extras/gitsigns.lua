local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
  cmd = "Gitsigns",
}

M.config = function()
  -- NOTE: I only use gitsigns to display changes in the sidebar.

  -- I use neogit for actual git work.

  -- local wk = require("which-key")
  -- wk.add({
  --   { "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc = "GS: Reset Buffer" },
  --   { "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", desc = "GS: Git Diff" },
  --   { "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", desc = "GS: Next Hunk" },
  --   { "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", desc = "GS: Prev Hunk" },
  --   { "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", desc = "GS: Blame" },
  --   { "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc = "GS: Preview Hunk" },
  --   { "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc = "GS: Reset Hunk" },
  --   { "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc = "GS: Stage Hunk" },
  --   { "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "GS:Undo Stage Hunk" },
  -- })

  require("gitsigns").setup({
    signs = {
      add = { text = "┃" },
      change = { text = "┃" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    signs_staged = {
      add = { text = "┃" },
      change = { text = "┃" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    signs_staged_enable = true,
    signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
    numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
      follow_files = true,
    },
    auto_attach = true,
    attach_to_untracked = false,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
    -- current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
      -- Options passed to nvim_open_win
      border = "border",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
  })
end

return M
