require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
})

vim.g.mapleader = " "
--little mason thing
vim.keymap.set("n", "<leader>mi", "<cmd>MasonInstall clangd python-lsp-server ruff mypy codelldb clang-format<CR>")

--clangd
--
require("lspconfig").clangd.setup({})

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 200
        }
      }
    }
  }
}

