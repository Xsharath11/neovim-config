return {
  {
    "williamboman/mason.nvim",
<<<<<<< HEAD
    build = ":MasonUpdate",  -- optional
=======
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
>>>>>>> new-branch
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
<<<<<<< HEAD
        ensure_installed = { "lua_ls", "rust_analyzer" },  -- LSPs to auto-install
=======
        ensure_installed = { "lua_ls", "rust_analyzer" }, -- LSPs to auto-install
>>>>>>> new-branch
      })
    end,
  },
}
<<<<<<< HEAD

=======
>>>>>>> new-branch
