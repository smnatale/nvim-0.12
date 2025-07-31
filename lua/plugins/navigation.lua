vim.pack.add({
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/echasnovski/mini.pick" },
  { src = "https://github.com/echasnovski/mini.icons" },
  { src = "https://github.com/echasnovski/mini.notify" },
  { src = "https://github.com/echasnovski/mini.pairs" },
})

require("oil").setup({
  win_options = {
    signcolumn = "yes:2",
  },
  view_options = {
    show_hidden = true,
  },
})

require("mini.pick").setup()
require("mini.icons").setup()
require("mini.notify").setup()
require("mini.pairs").setup()

vim.ui.select = MiniPick.ui_select

vim.keymap.set("n", "<leader>e", ":Oil<CR>")
vim.keymap.set("n", "<leader>sf", ":Pick files<CR>")
vim.keymap.set("n", "<leader>sg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<leader>sh", ":Pick help<CR>")
