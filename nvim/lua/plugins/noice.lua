return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- 1. DESACTIVAR LA VENTANA DE AYUDA AL ABRIR () o {}
      opts.lsp = opts.lsp or {}
      opts.lsp.signature = { enabled = false }

      -- 2. TU CONFIGURACIÓN ANTERIOR (Ocultar mensajes de jdtls)
      opts.routes = opts.routes or {}
      table.insert(opts.routes, {
        filter = {
          event = "lsp",
          any = {
            { find = "Validate documents" },
            { find = "Publish Diagnostics" },
          },
        },
        opts = { skip = true },
      })
    end,
  },
}
