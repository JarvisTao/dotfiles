return {
  {
    "linux-cultist/venv-selector.nvim",
    config = function()
      require("venv-selector").setup({
        anaconda_base_path = "/home/jarvis/anaconda3/",
        anaconda_envs_path = "/home/jarvis/anaconda3/envs",
      })
    end,
    opts = function(_, opts)
      if require("lazyvim.util").has("nvim-dap-python") then
        opts.dap_enabled = true
      end
      return vim.tbl_deep_extend("force", opts, {
        name = {
          "venv",
          ".venv",
          "env",
          ".env",
        },
      })
    end,
    keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      local path = require("mason-registry").get_package("debugpy"):get_install_path()
      -- require("dap-python").setup(path .. "/venv/bin/python")
    end,
  },
}
