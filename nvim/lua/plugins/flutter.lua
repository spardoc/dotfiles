return {
  -- 1. Bloquear que lspconfig configure dartls automáticamente
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      setup = {
        dartls = function()
          -- Al retornar true, le decimos a LazyVim que NO configure dartls por su cuenta
          return true
        end,
      },
    },
  },

  -- 2. Configuración limpia de flutter-tools
  {
    "akinsho/flutter-tools.nvim",
    lazy = false, -- Forzar la carga para que los comandos existan desde el inicio
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup({
        ui = {
          border = "rounded",
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        dev_log = {
          enabled = true,
          open_cmd = "botright 15split", -- Cambia el vsplit (vertical) por un split horizontal abajo de 15 líneas de alto
        },
        lsp = {
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            renameFilesWithClasses = "prompt",
          },
        },
      })
    end,
    keys = {
      { "<leader>fr", "<cmd>FlutterRun<cr>", desc = "Flutter: Run / Hot Reload" },
      { "<leader>fq", "<cmd>FlutterQuit<cr>", desc = "Flutter: Quit" },
      { "<leader>fd", "<cmd>FlutterDevices<cr>", desc = "Flutter: Devices" },
      { "<leader>fD", "<cmd>FlutterRun --flavor dev -t lib/main.dart<cr>", desc = "Flutter: Run Dev Flavor" },
      { "<leader>fl", "<cmd>FlutterLogToggle<cr>", desc = "Flutter: Toggle Logs" },
    },
  },
}
