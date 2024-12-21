local M = {
  "folke/flash.nvim",
  event = "VeryLazy",
}

function M.config()
  local keymap = vim.keymap.set

  keymap({ "n", "x", "o" }, "s", function()
    require("flash").jump()
  end, { noremap = true, silent = false, desc = "Flash" })
  keymap({ "n", "x", "o" }, "S", function()
    require("flash").treesitter()
  end, { noremap = true, silent = false, desc = "Flash Treesitter" })
  keymap("o", "r", function()
    require("flash").remote()
  end, { noremap = true, silent = false, desc = "Remote Flash" })
  keymap({ "o", "x" }, "R", function()
    require("flash").treesitter_search()
  end, { noremap = true, silent = false, desc = "Treesitter Search" })
  keymap("c", "<c-s>", function()
    require("flash").toggle()
  end, { noremap = true, silent = false, desc = "Toggle Flash Search" })
end

return M
