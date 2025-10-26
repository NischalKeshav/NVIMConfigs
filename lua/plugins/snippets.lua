return {
  -- Snippet engine
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*", -- stable version
    build = "make install_jsregexp", -- optional but enables advanced regex
    config = function()
      local luasnip = require("luasnip")

      -- Load VSCode-style snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Optional: enable auto snippet expansion
      luasnip.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = true,
      })
    end,
  },

  -- Snippet collection (includes React)
  {
    "rafamadriz/friendly-snippets",
  },
}
