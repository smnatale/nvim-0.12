vim.pack.add({
  { src = "https://github.com/L3MON4D3/LuaSnip" },
  { src = "https://github.com/Saghen/blink.cmp" },
})

require("blink.cmp").setup({
  opts = {
    snippets = { preset = "luasnip" },
    keymap = {
      preset = "default",
      ["<CR>"] = { "accept", "fallback" },
      ["<C-Space>"] = { "show" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    signature = { enabled = true },
    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 500 },
      menu = {
        auto_show = true,
        draw = {
          treesitter = { "lsp" },
          columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
        },
      },
    },
    sources = {
      default = {
        "lsp",
        "path",
        "snippets",
        "buffer",
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
})
