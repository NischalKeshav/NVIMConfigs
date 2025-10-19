-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- My changesi
vim.keymap.set("i", "<C-z>", "<C-o>u'", { noremap = true, silent = true }) -- Undo to command z or <D-z><D-:c>
