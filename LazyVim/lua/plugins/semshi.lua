return {
  "wookayin/semshi", -- use a maintained fork
  init = function()
    -- Disabled these features better provided by LSP or other more general plugins
    vim.g["semshi#error_sign"] = false
    vim.g["semshi#simplify_markup"] = false
    vim.g["semshi#mark_selected_nodes"] = false
    vim.g["semshi#update_delay_factor"] = 0.001

    -- these are official colors for semshi
    -- hi semshiLocal           ctermfg=209 guifg=#ff875f
    -- hi semshiGlobal          ctermfg=214 guifg=#ffaf00
    -- hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
    -- hi semshiParameter       ctermfg=75  guifg=#5fafff
    -- hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
    -- hi semshiFree            ctermfg=218 guifg=#ffafd7
    -- hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
    -- hi semshiAttribute       ctermfg=49  guifg=#00ffaf
    -- hi semshiSelf            ctermfg=249 guifg=#b2b2b2
    -- hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
    -- hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
    --
    -- hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
    -- hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
    -- sign define semshiError text=E> texthl=semshiErrorSign
    --
    -- This autocmd must be defined in init to take effect
    vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
      group = vim.api.nvim_create_augroup("SemanticHighlight", {}),
      callback = function()
        -- Only add style, inherit or link to the LSP's colors
        -- highlight! link semshiImported @none
        vim.cmd([[
          highlight! semshiGlobal gui=italic
          highlight! link semshiParameter @lsp.type.parameter
          highlight! link semshiParameterUnused DiagnosticUnnecessary
          highlight! link semshiBuiltin @function.builtin
          highlight! link semshiAttribute @field
          highlight! link semshiSelf @lsp.type.selfKeyword
          highlight! link semshiUnresolved @lsp.type.unresolvedReference
          highlight! link semshiFree @none
          ]])
      end,
    })
  end,
}

