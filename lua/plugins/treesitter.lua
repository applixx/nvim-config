return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false, -- il plugin non supporta il lazy-loading
  build = ":TSUpdate", -- aggiorna i parser quando il plugin si aggiorna
  config = function()
    -- Parser da installare (uno per linguaggio)
    require("nvim-treesitter").install({
      "lua", "vim", "vimdoc", "markdown", "markdown_inline",
      "c", "cpp", "java", "asm",
    }) -- ricorda di aggiornare anche la lista "pattern" quando aggiungi linguaggi

    -- Attiva i colori di Tree-sitter quando apri un file di questi tipi
    -- (markdown_inline non serve qui: lo usa il parser markdown in automatico)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua", "vim", "help", "markdown", "c", "cpp", "java", "asm" },
      callback = function() vim.treesitter.start() end,
    })
  end,
}
