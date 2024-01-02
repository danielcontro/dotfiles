return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "autopep8" },
      ocaml = { "ocamlformat" },
      rust = { "rustfmt" },
      tex = { "latexindent" },
    },
  },
}
