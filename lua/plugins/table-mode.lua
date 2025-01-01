-- lua/plugins/table-mode.lua
return {
  "dhruvasagar/vim-table-mode",
  keys = {
    { "<Leader>tm", "<cmd>TableModeToggle<CR>", desc = "Toggle Table Mode" },
  },
  cmd = {
    "TableModeToggle",
    "TableModeEnable",
    "TableModeDisable",
  },
}
