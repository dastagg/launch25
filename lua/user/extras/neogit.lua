local M = {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  event = "VeryLazy",
}

function M.config()
  -- local icons = require("user.icons")
  local wk = require("which-key")
  wk.add({
    { "<leader>gg", "<cmd>Neogit<CR>", desc = "NG: Neogit" },
  })

  require("neogit").setup({
    auto_refresh = true,
    disable_builtin_notifications = false,
    use_magit_keybindings = false,
    -- Change the default way of opening neogit
    kind = "tab",
    -- Change the default way of opening the commit popup
    commit_popup = {
      kind = "split",
    },
    -- Change the default way of opening popups
    popup = {
      kind = "split",
    },
    -- customize displayed signs
    signs = {
      -- { CLOSED, OPENED }
      hunk = { "", "" },
      item = { ">", "v" },
      section = { ">", "v" },
    },
    -- signs = {
    --   -- { CLOSED, OPENED }
    --   section = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
    --   item = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
    --   hunk = { "", "" },
    -- },
    integrations = {
      -- If enabled, use telescope for menu selection rather than vim.ui.select.
      -- Allows multi-select and some things that vim.ui.select doesn't.
      telescope = true,
      -- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `diffview`.
      -- The diffview integration enables the diff popup.
      --
      -- Requires you to have `sindrets/diffview.nvim` installed.
      diffview = true,
    },
  })
end

return M
