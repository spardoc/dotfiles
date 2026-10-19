
return {
  "JavaHello/spring-boot.nvim",
  dependencies = {
    "mfussenegger/nvim-jdtls",
    "ibhagwan/fzf-lua",
  },
  ft = { "java", "kotlin", "yaml", "properties" },
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("spring_boot").setup({
      -- El plugin inicializa el LSP de Spring Boot automáticamente
    })
  end,
}
