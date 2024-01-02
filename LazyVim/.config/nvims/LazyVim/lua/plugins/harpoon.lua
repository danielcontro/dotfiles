return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>ha",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add current buffer to harpoon",
    },
    {
      "<leader>m",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Open harpoon mark list",
    },
    {
      "<leader>1",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Navigate to harpoon file 1",
    },
    {
      "<leader>2",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Navigate to harpoon file 2",
    },
    {
      "<leader>3",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Navigate to harpoon file 3",
    },
    {
      "<leader>4",
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Navigate to harpoon file 4",
    },
  },
}
