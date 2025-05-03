local M = {
  "benomahony/uv.nvim",
}

M.config = function()
  require("uv").setup()
end

return M
