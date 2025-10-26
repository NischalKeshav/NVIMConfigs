return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        shade_terminals = true,
        direction = "float",
      })

      -- Example keymaps for multiple terminals
      vim.keymap.set("n", "<leader>t1", ":ToggleTerm 1 direction=float<CR>", { desc = "Terminal 1" })
      vim.keymap.set("n", "<leader>t2", ":ToggleTerm 2 direction=float<CR>", { desc = "Terminal 2" })
      vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Vertical Terminal" })
      vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Horizontal Terminal" })
    end,
  },
}
