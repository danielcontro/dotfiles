return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      -- {
      --   "uga-rosa/cmp-dictionary",
      --   -- dependencies = {
      --   --   "kkharji/sqlite.lua",
      --   -- },
      --   config = function()
      --     local dict = require("cmp_dictionary")
      --     dict.setup({
      --       exact = 2,
      --       first_case_insensitive = true,
      --       async = true,
      --       sqlite = false,
      --     })
      --     dict.switcher({
      --       spelllang = {
      --         en = "~/.config/aspell/english.dict",
      --         it = "~/.config/aspell/italian.dict",
      --       },
      --     })
      --   end,
      -- },
      "kdheepak/cmp-latex-symbols",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "orgmode" },
        { name = "dictionary", keyword_length = 2 },
        { name = "emoji" },
        -- {
        --   name = "latex_symbols",
        --   -- max_item_count = 5,
        --   -- option = { strategy = 0 },
        -- },
      }))
    end,
  },
}
