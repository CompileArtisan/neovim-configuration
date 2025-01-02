-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts and type(opts) == "table" then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Terminal
map("n", "<Leader>t", ":split | terminal<CR>", { desc = "Open horizontal terminal" })
map("n", "<Leader>tv", ":vsplit | terminal<CR>", { desc = "Open vertical terminal" })

-- MarkdownPreviewToggle
map("n", "<Leader>mp", ":MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown preview" })
