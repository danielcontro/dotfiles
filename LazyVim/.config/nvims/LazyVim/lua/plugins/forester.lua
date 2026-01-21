require("nvim-treesitter.parsers").forester = {
  install_info = {
    url = "https://github.com/kentookura/tree-sitter-forester",
    -- files = { "src/parser.c" },
    branch = "main",
    -- generate_requires_npm = false,
    -- requires_generate_from_grammar = false,
  },
  filetype = "forester",
  tier = 4,
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.filetype.add({ extension = { tree = "forester" } })
      vim.list_extend(opts.ensure_installed, { "forester" })
      -- P(opts)
      return opts
    end,
  },
}
