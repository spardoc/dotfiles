return {
  {
    "saghen/blink.cmp",
    opts = {
      -- Desactiva la ventana flotante de parámetros (Signature Help) al abrir (
      signature = { enabled = false },
      
      completion = {
        -- Evita que el menú de autocompletado se abra al presionar caracteres como { o (
        trigger = {
          show_on_trigger_character = false,
        },
      },
    },
  },
}
