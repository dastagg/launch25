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
spec("user.toggleterm")
spec("user.dap")
-- Up to this point, this would be a good, basic dev config.
-- This includes lsp and debugging configs for python and golang.

-- NOTE: Following are "ui extras".
spec("user.extras.comment") -- comment lines with "<Space> /"
spec("user.extras.todo-comments") -- makes comments 'Light Up'
spec("user.extras.navic-bread") -- provide context about code in winbar
spec("user.extras.indent-blankline") -- provide indentation lines for code; integrated with rainbow-delimiters
spec("user.extras.rainbow-delimiters") -- alternating syntax highlighting of {}, (), [] and more
spec("user.extras.illuminate") -- highlight all other words under cursor
spec("user.extras.autopairs") -- auto create the other half of the pair of {}, (), []
spec("user.extras.neotab") -- tab in and out of {}, (), [] and more
spec("user.extras.nvim-surround") -- Add/delete/change surrounding pairs
spec("user.extras.colorizer") -- color highlighter for "#xxxxxx" colors
spec("user.extras.ufo") -- folding code
spec("user.extras.flash") -- quickly jump to letters or words

-- NOTE: Following are "development extras".
spec("user.extras.gitsigns") -- show changes in sidebar
spec("user.extras.neogit") -- "magit" like git interface
spec("user.extras.project") -- provide project management
spec("user.extras.code-runner") -- run code on the fly
spec("user.extras.neotest") -- test code on the fly
spec("user.extras.neogen") -- generate annotations (doc strings, etc)

-- NOTE: Following are experimental plugins

-- WARN: disable hardtime before running debugging.

-- spec("user.extras.hardtime") -- learn vim motions... or have a "Hardtime"
-- spec("user.extras.copilot") -- Github Copilot

require("user.lazy")
