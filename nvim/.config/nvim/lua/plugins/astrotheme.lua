return {
  {
    "AstroNvim/astrotheme",
    config = function()
      require("astrotheme").setup({
        --         plugins = {
        --           ["lualine.nvim"] = false,
        --         },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "astrotheme",
    },
  },
}
