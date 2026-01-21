---@module "lazy"
---@type LazySpec
return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "erooke/blink-cmp-latex",
    },
    opts = {
      sources = {
        default = { "latex" },

        providers = {
          latex = {
            name = "Latex",
            module = "blink-cmp-latex",
            opts = {
              -- set to true to insert the latex command instead of the symbol
              insert_command = function(ctx)
                local ft = vim.api.nvim_get_option_value("filetype", {
                  scope = "local",
                  buf = ctx.bufnr,
                })
                if ft == "tex" then
                  return true
                end
                return false
              end,
            },
          },
        },
      },
    },
  },
  -- {
  --   "saghen/blink.cmp",
  --   opts = {
  --     sources = {
  --       per_filetype = {
  --         org = { "orgmode" },
  --       },
  --       providers = {
  --         orgmode = {
  --           name = "Orgmode",
  --           module = "orgmode.org.autocompletion.blink",
  --           fallbacks = { "buffer" },
  --         },
  --       },
  --     },
  --   },
  --   dependencies = {
  --     "nvim-orgmode/orgmode",
  --     {
  --       "Kaiser-Yang/blink-cmp-dictionary",
  --       dependencies = {
  --         "nvim-lua/plenary.nvim",
  --       },
  --     },
  --   },
  -- },
  --   ---@module 'blink.cmp'
  --   ---@type blink.cmp.Config
  --   opts = {
  --     sources = {
  --       default = { "dictionary" },
  --       -- , "lsp", "path", "luasnip", "buffer" },
  --       -- per_filetype = {
  --       --   org = { "lsp", "path", "snippets", "buffer", "orgmode" },
  --       -- },
  --       providers = {
  --         -- orgmode = {
  --         --   name = "Org",
  --         --   module = "orgmode.org.autocompletion.blink",
  --         --   -- enabled = true,
  --         -- },
  --         dictionary = {
  --           module = "blink-cmp-dictionary",
  --           name = "Dict",
  --           -- Make sure this is at least 2.
  --           -- 3 is recommended
  --           min_keyword_length = 3,
  --           enabled = true,
  --           opts = {
  --             dictionary_directories = {
  --               vim.fn.expand("~/.config/dictionaries"),
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-emoji",
  --     -- {
  --     --   "uga-rosa/cmp-dictionary",
  --     --   -- dependencies = {
  --     --   --   "kkharji/sqlite.lua",
  --     --   -- },
  --     --   config = function()
  --     --     local dict = require("cmp_dictionary")
  --     --     dict.setup({
  --     --       exact = 2,
  --     --       first_case_insensitive = true,
  --     --       async = true,
  --     --       sqlite = false,
  --     --     })
  --     --     dict.switcher({
  --     --       spelllang = {
  --     --         en = "~/.config/aspell/english.dict",
  --     --         it = "~/.config/aspell/italian.dict",
  --     --       },
  --     --     })
  --     --   end,
  --     -- },
  --     "kdheepak/cmp-latex-symbols",
  --   },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     local cmp = require("cmp")
  --     opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
  --       { name = "orgmode" },
  --       { name = "dictionary", keyword_length = 2 },
  --       { name = "emoji" },
  --       {
  --         name = "latex_symbols",
  --         max_item_count = 5,
  --         option = { strategy = 2 },
  --       },
  --     }))
  --   end,
  -- },
}
