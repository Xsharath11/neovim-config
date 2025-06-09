return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- optional
    opts = {
      ensure_installed = {
        "black",
        "pyright",
        "mypy",
        "ruff",
        "debugpy",
      },
    },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer" }, -- LSPs to auto-install
      })
    end,
  },
}
