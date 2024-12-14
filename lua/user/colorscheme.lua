local M = {
  "scottmckendry/cyberdream.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  vim.cmd.colorscheme("cyberdream")
end

return M

-- local M = {
--   "folke/tokyonight.nvim",
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
--   local bg = "#011628"
--   local bg_dark = "#011423"
--   local bg_highlight = "#143652"
--   local bg_search = "#0A64AC"
--   local bg_visual = "#275378"
--   local fg = "#CBE0F0"
--   local fg_dark = "#B4D0E9"
--   local fg_gutter = "#627E97"
--   local border = "#547998"
--
--   require("tokyonight").setup({
--     style = "night",
--     on_colors = function(colors)
--       colors.bg = bg
--       colors.bg_dark = bg_dark
--       colors.bg_float = bg_dark
--       colors.bg_highlight = bg_highlight
--       colors.bg_popup = bg_dark
--       colors.bg_search = bg_search
--       colors.bg_sidebar = bg_dark
--       colors.bg_statusline = bg_dark
--       colors.bg_visual = bg_visual
--       colors.border = border
--       colors.fg = fg
--       colors.fg_dark = fg_dark
--       colors.fg_float = fg
--       colors.fg_gutter = fg_gutter
--       colors.fg_sidebar = fg_dark
--     end,
--   })
--
--   vim.cmd.colorscheme("tokyonight")
-- end
--
-- return M

--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }

-- local M = {
--   "LunarVim/darkplus.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
--   vim.cmd.colorscheme("darkplus")
--   -- NOTE: changed the bg color to 000 in .local/share/nvim/lazy.
-- end
--
-- return M

-- local M = {
--   "marko-cerovac/material.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
--   vim.g.material_style = "deep ocean"
--   vim.cmd.colorscheme("material")
-- end
--
-- return M

-- local M = {}
--
-- function M.config()
--   vim.cmd.colorscheme("wildcharm")
-- end
--
-- return M

-- local M = {
--   "folke/tokyonight.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
--   vim.cmd.colorscheme("tokyonight-moon")
-- end
--
-- return M

-- local M = {
--   "navarasu/onedark.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
--   require("onedark").setup({
--     style = "darker",
--   })
--
--   vim.cmd("colorscheme onedark")
-- end
--
-- return M
