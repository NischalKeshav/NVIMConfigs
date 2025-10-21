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
-- Disable terminal suspend (Ctrl+Z default)
vim.keymap.set("n", "<C-z>", "u", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<C-o>u", { noremap = true, silent = true })
-- Start live-server as a background job
vim.keymap.set("n", "<leader>ls", function()
  local dir = vim.fn.expand("%:p:h")
  vim.fn.jobstart("live-server " .. dir, {
    detach = true,
    on_exit = function()
      print("Live server stopped")
    end,
  })
  print("Live server started at " .. dir)
end, { desc = "Start live server" })

-- Optional: Add a stop command
vim.keymap.set("n", "<leader>lk", ":!pkill live-server<CR>", { desc = "Kill live server" })
