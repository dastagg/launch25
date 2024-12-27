local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  dependencies = {
    "zbirenbaum/copilot-cmp",
  },
}

function M.config()
  require("copilot").setup({
    panel = {
      keymap = {
        jump_next = "<c-j>",
        jump_prev = "<c-k>",
        accept = "<c-l>",
        refresh = "r",
        open = "<M-CR>",
      },
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<c-l>",
        next = "<c-j>",
        prev = "<c-k>",
        dismiss = "<c-h>",
      },
    },
    filetypes = {
      yaml = false,
      markdown = true,
      help = false,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      ["."] = false,
    },
    copilot_node_command = "node",
    server_opts_overrides = {},
  })

  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap("n", "<c-s>", ":lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
end

return M

-- local M = {
--   "zbirenbaum/copilot.lua",
--   cmd = "Copilot",
--   event = "InsertEnter",
-- }
--
-- M.config = function()
--   require("copilot").setup({
--     panel = {
--       enabled = false,
--       -- enabled = true,
--       -- auto_refresh = false,
--       -- keymap = {
--       --   jump_prev = "[[",
--       --   jump_next = "]]",
--       --   accept = "<CR>",
--       --   refresh = "gr",
--       --   open = "<M-CR>",
--       -- },
--       -- layout = {
--       --   position = "bottom", -- | top | left | right | horizontal | vertical
--       --   ratio = 0.4,
--       -- },
--     },
--     suggestion = {
--       enabled = false,
--       -- enabled = true,
--       -- auto_trigger = false,
--       -- hide_during_completion = true,
--       -- debounce = 75,
--       -- keymap = {
--       --   accept = "<M-l>",
--       --   accept_word = false,
--       --   accept_line = false,
--       --   next = "<M-]>",
--       --   prev = "<M-[>",
--       --   dismiss = "<C-]>",
--       -- },
--     },
--     filetypes = {
--       yaml = false,
--       markdown = false,
--       help = false,
--       gitcommit = false,
--       gitrebase = false,
--       hgcommit = false,
--       svn = false,
--       cvs = false,
--       ["."] = false,
--     },
--     copilot_node_command = "node", -- Node.js version must be > 18.x
--     server_opts_overrides = {},
--   })
-- end
--
-- return M
