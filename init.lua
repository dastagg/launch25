require("user.launch")
require("user.options")
require("user.keymaps")
require("user.autocmds")
spec("user.basenvim")
spec("user.colorscheme")
spec("user.which-key")
spec("user.webdevicons")
spec("user.treesitter")
spec("user.mason")
-- WARN: Must manually install python-lsp-ruff in Mason pylsp venv.
spec("user.schemastore")
spec("user.lspconfig")
spec("user.cmp")
spec("user.telescope")
spec("user.conform")
spec("user.nvim-lint")
spec("user.nvim-tree")
spec("user.lualine")
-- Up to this point, this would be a well functioning basic config.
-- NOTE: Following are "ui extras" for more functionallity.
spec("user.extras.comment") -- comment lines with "<Space> /"
spec("user.extras.todo-comments") -- makes comments 'Light Up'"
spec("user.extras.navic-bread") -- provide context about code in winbar"
require("user.lazy")
