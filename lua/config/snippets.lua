return {
  {
    "rafamadriz/friendly-snippets",
    config = function()
      -- Extend LuaSnip to include "html" snippets in "javascriptreact" files.
      -- This fixes the issue of no HTML completion in JSX files.
      require("luasnip").filetype_extend("javascriptreact", { "html" })
      -- Load all snippets from friendly-snippets.
      require("luasnip.loaders.from_vscode").lazy_load()
      -- Add this line to the config function in snippets.lua
      require("luasnip").filetype_extend("javascript", { "javascriptreact" })
    end,
  },
}
