local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}

function M.config()
  local lsp_servers = {
    "lua_ls",
    "bashls",
    "gopls",
    "html",
    "pylsp",
    "cssls",
    "ts_ls",
  }

  local tools = {
    -- linter, formatter, other tools, dap
    -- Lua,
    "luacheck",
    "stylua",
    -- Python,
    "ruff",
    "debugpy",
    -- Go
    "golangci-lint",
    "gofumpt",
    "goimports",
    "gomodifytags",
    "gotests",
    "iferr",
    "impl",
    "delve",
    -- Bash
    "shellcheck",
    "shfmt",
    -- HTML, CSS, Javascript
    "prettier",
    "eslint_d",
  }

  require("mason").setup({
    ui = {
      border = "rounded",
    },
  })

  -- ensure tools (except LSPs) are installed
  local mr = require("mason-registry")
  local function install_ensured()
    for _, tool in ipairs(tools) do
      local p = mr.get_package(tool)
      if not p:is_installed() then
        p:install()
      end
    end
  end
  if mr.refresh then
    mr.refresh(install_ensured)
  else
    install_ensured()
  end

  require("mason-lspconfig").setup({
    automatic_installation = false,
    ensure_installed = lsp_servers,
  })
end

return M
