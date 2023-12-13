return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- change a keymap
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-h>"] = "which_key",
          ["<C-k>"] = "move_selection_previous",
          ["<C-j>"] = "move_selection_next",
          -- ["<C-y>"] = "preview_scrolling_down",
          -- ["<C-l>"] = "preview_scrolling_up",
          ["<esc>"] = "close",
          ["<C-n>"] = require("telescope.actions").cycle_history_next,
          ["<C-p>"] = require("telescope.actions").cycle_history_prev,
        },
      },
    },
  },
}
