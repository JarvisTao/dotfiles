-- LSP keymaps
return{
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- disable a keymap
    keys[#keys + 1] = { "K", false }
    -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
    -- add a keymap
  end,
}
