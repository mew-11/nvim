local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    }
  },
  i = {
    ["<leader>fn"] = {
      "<cmd>Nerdy<CR>",
      "Search glyphs icon "
    }
  }
}
--ok

return M
