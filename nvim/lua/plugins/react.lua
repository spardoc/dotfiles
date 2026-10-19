return {
  -- Auto-cerrar y renombrar etiquetas JSX/TSX
  {
    "windwp/nvim-ts-autotag",
    event = "LazyFile",
    opts = {},
  },
  -- Soporte de Emmet para atajos de HTML/JSX
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = { "javascriptreact", "typescriptreact", "html", "css" },
        },
      },
    },
  }
}
