-- Associazioni personalizzate per il rilevamento del filetype
vim.filetype.add({
  extension = {
    h = "c", -- tratta i file .h come C invece che C++
  },
})
