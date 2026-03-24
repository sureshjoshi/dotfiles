-- Mostly copied from https://github.com/tduyng/nvim/blob/main/lua/config/diagnostics.lua

-- TODO: Update Dexco for diagnostics - these shouldn't exist
local palette = {
  err = "#51202A",
  warn = "#3B3B1B",
  info = "#1F3342",
  hint = "#1E2E1E",
}

-- TODO: Update Dexco for diagnostics - these shouldn't exist
vim.api.nvim_set_hl(0, "DiagnosticErrorLine", { bg = palette.err, blend = 20 })
vim.api.nvim_set_hl(0, "DiagnosticWarnLine", { bg = palette.warn, blend = 15 })
vim.api.nvim_set_hl(0, "DiagnosticInfoLine", { bg = palette.info, blend = 10 })
vim.api.nvim_set_hl(0, "DiagnosticHintLine", { bg = palette.hint, blend = 10 })

-- Setup diagnostics to avoid too much noise, but provide full information
vim.diagnostic.config({
  linehl = {
    [vim.diagnostic.severity.ERROR] = "DiagnosticErrorLine",
    [vim.diagnostic.severity.WARN] = "DiagnosticWarnLine",
    [vim.diagnostic.severity.INFO] = "DiagnosticInfoLine",
    [vim.diagnostic.severity.HINT] = "DiagnosticHintLine",
  },
    float = {
    border = "rounded",
    source = true,
  },
  
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = " ",
      [vim.diagnostic.severity.HINT] = "󰌵 ",
    },
  },
      virtual_lines = {             -- Show diagnostics as virtual lines
        current_line = true,
    },
    virtual_text = {                -- Show inline diagnostics on same line
        current_line = false,
        prefix = "●",
        source = "if_many",
        spacing = 2,
    },
})
