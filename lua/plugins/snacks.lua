vim.api.nvim_set_hl(0, "Border", { fg = "#93a1a1", bold = true })
vim.api.nvim_set_hl(0, "Paper", { italic = true })

return {
  "folke/snacks.nvim",
  opts = {
    -- desactivar el dashboard por defecto y agregar el cuastom
    dashboard = { enabled = false },
    scratch = {
      -- Carpeta por defecto
      root = vim.fn.expand("~/Documents/notes"),
      -- Opcional: puedes configurar el formato de nombre de archivo
      -- por defecto usa la fecha y hora si no le das un nombre

      ft = "markdown", -- El tipo de archivo por defecto

      -- Configuración de la ventana flotante
      win = {
        width = 0.5,
        height = 0.7,
        border = "double",
        title = "Notas Rápidas",
        title_pos = "left",
        footer_pos = "right",
        wo = {
          winhighlight = "NormalFloat:Paper,FloatBorder:Border",
        },
      },
    },
  },
}
