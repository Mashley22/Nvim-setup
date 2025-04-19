require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "vim", "vimdoc", "c", "cpp", "python" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
})




vim.g.undotree_DiffCommand = "FC"
