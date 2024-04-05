-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "eex",
      "elixir",
      "graphql",
      "heex",
      "ledger",
      "lua",
      "sql",
      "toml",
      "vim",
      "yaml",
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
