-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("luasnip.loaders.from_vscode").lazy_load({
  paths = { "~/.config/nvim/snippets" },
})
require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git", ".DS_Store" }, -- Add other directories as needed
  },
  -- You can also add this to specific pickers if you only want it to apply to some
  -- pickers = {
  --   find_files = {
  --     file_ignore_patterns = { "node_modules" },
  --   },
  -- },
})
