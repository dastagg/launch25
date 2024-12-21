local M = {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  ---@diagnostic disable-next-line: missing-fields
  opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}

return M
-- local M = {
--   "folke/flash.nvim",
--   event = "VeryLazy",
-- }
--
-- function M.config()
--   local opts = { noremap = true, silent = true }
--   -- local keymap = vim.api.nvim_set_keymap
--   local keymap = vim.keymap.set
--
--   keymap({ "n", "x", "o" }, "s", function()
--     require("flash").jump()
--   end, opts)
--   keymap({ "n", "x", "o" }, "S", function()
--     require("flash").treesitter()
--   end, opts)
--   keymap("o", "r", function()
--     require("flash").remote()
--   end, opts)
--   keymap({ "o", "x" }, "R", function()
--     require("flash").treesitter_search()
--   end, opts)
--   keymap("c", "<c-s>", function()
--     require("flash").toggle()
--   end, opts)
-- end
--
-- -- keymap({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, desc = "Flash Treesitter", opts ),
-- -- keymap( "o", "r", function() require("flash").remote() end, desc = "Remote Flash" ),
-- -- keymap( { "o", "x" }, "R", function() require("flash").treesitter_search() end, desc = "Treesitter Search" ),
-- -- keymap( "c", "<c-s>" function() require("flash").toggle() end, desc = "Toggle Flash Search" ),
--
-- return M
