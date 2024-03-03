return {
  {
    "shellRaining/hlchunk.nvim",
    init = function()
      vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { pattern = "*", command = "EnableHL" })
      require("hlchunk").setup({
        chunk = {
          enable = true,
          use_treesitter = true,
          style = {
            { fg = "#806d9c" },
          },
        },
        indent = {
          enable = false,
          chars = { "│", "¦", "┆", "┊" },
          use_treesitter = false,
          style = {
            "#5c6370",
            "#5c6370",
            "#5c6370",
            "#5c6370",
            "#5c6370",
            "#5c6370",
            -- "#FF0000",
            -- "#FF7F00",
            -- "#FFFF00",
            -- "#00FF00",
            -- "#00FFFF",
            -- "#0000FF",
            -- "#8B00FF",
          },
          -- style = {
          --   vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
          -- },
        },
        blank = {
          enable = false,
        },
        line_num = {
          use_treesitter = true,
        },
      })
    end,
  },
  -- {
  -- 	"lukas-reineke/indent-blankline.nvim",
  -- 	opts = {
  -- 		show_current_context = true,
  -- 		show_current_context_start = false,
  -- 	}
  -- },
}

