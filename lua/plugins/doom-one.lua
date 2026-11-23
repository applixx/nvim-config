return {
  "NTBBloodbath/doom-one.nvim",
  lazy = false,    -- caricalo subito all'avvio (è il tema principale)
  priority = 1000, -- caricalo prima degli altri plugin
  config = function()
    vim.g.doom_one_enable_treesitter = true     -- usa i colori di Tree-sitter
    vim.g.doom_one_transparent_background = true -- sfondo trasparente, come avevi su koda
  end,
}
