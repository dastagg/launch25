local M = {
  "CRAG666/code_runner.nvim",
  opts = {
    mode = "float",
  },
}

M.config = function()
  local wk = require("which-key")
  wk.add({
    { "<leader>r", group = "Code Runner" },
    { "<leader>rf", "<cmd>RunFile toggleterm<cr>", desc = "Run File" },
    { "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
  })

  require("code_runner").setup({
    filetype = {
      python = "cd '$dir' && python -u '$dir/$fileName'",
      c = function(...)
        c_base = {
          "cd $dir &&",
          "gcc $fileName -o",
          "/tmp/$fileNameWithoutExt",
        }
        local c_exec = {
          "&& /tmp/$fileNameWithoutExt &&",
          "rm /tmp/$fileNameWithoutExt",
        }
        vim.ui.input({ prompt = "Add more args:" }, function(input)
          c_base[4] = input
          vim.print(vim.tbl_extend("force", c_base, c_exec))
          require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
        end)
      end,
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
