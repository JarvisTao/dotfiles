return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      -- # Example of using dprint only when a dprint.json file is present
      -- dprint = {
      --   condition = function(ctx)
      --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
      --   end,
      -- },
      --
      -- # Example of using shfmt with extra args
      shfmt = {
        prepend_args = { "-i", "4", "-ci" },
      },
    },
  },
}

