-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
--
--
--
--
local map = vim.keymap.set

-- Custom keymaps can be added here
-- This keymap will toggle the file explorer
map("n", "\\", function()
  local explorer_pickers = Snacks.picker.get({ source = "explorer" })
  if #explorer_pickers == 0 then
    Snacks.picker.explorer()
  else
    explorer_pickers[1]:focus()
  end
end, { desc = "File Explorer" })
