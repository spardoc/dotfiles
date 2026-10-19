-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Asociar archivos .xhtml con el tipo de archivo 'html'
vim.filetype.add({
  extension = {
    xhtml = "html",
  },
})
-- Tabs
vim.opt.tabstop = 2 -- 1 tab = 4 espacios
vim.opt.shiftwidth = 2 -- Tamaño de la indentación
vim.opt.expandtab = true -- Convierte tabs a espacios automáticamente
