return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      -- Aislamos el entorno de ejecución de la herramienta (LSP) del entorno de tu proyecto.
      -- Esto fuerza a que jdtls arranque usando Java 21, sin importar qué versión 
      -- esté configurada en la terminal desde la que abriste Neovim.
      opts.cmd_env = {
        JAVA_HOME = "/usr/lib/jvm/java-21-openjdk",
      }

      opts.settings = opts.settings or {}
      opts.settings.java = opts.settings.java or {}
      opts.settings.java.inlayHints = {
        parameterNames = { enabled = "none" },
      }
      opts.settings.java.configuration = opts.settings.java.configuration or {}
      opts.settings.java.configuration.updateBuildConfiguration = "interactive"
      opts.settings.java.configuration.runtimes = {
        {
          name = "JavaSE-11",
          path = "/usr/lib/jvm/java-11-openjdk",
          default = true,
        },
        {
          name = "JavaSE-17",
          path = "/usr/lib/jvm/java-17-openjdk",
        },
      }
      opts.capabilities = opts.capabilities or {}
      opts.capabilities.textDocument = opts.capabilities.textDocument or {}
      opts.capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      }
      opts.capabilities.textDocument.foldingRange = nil
      return opts
    end,
  },
}
