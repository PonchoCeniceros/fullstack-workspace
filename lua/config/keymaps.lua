--
-- Deshabilitar keymaps originales de navegación de ventanas y buffers
--
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

--
-- Navegación de ventanas con Shift + doble flecha
--
vim.keymap.set("n", "<S-Left><S-Left>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<S-Down><S-Down>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<S-Up><S-Up>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<S-Right><S-Right>", "<C-w>l", { desc = "Go to Right Window" })

--
-- Navegación de buffers con Shift + flechas
--
vim.keymap.set("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

--
-- Abrir una nota rápida nueva
--
vim.keymap.set("n", "<leader>.", function()
  Snacks.scratch()
end, { desc = "Quick Note" })

--
-- Ver el historial de notas que has tomado
--
vim.keymap.set("n", "<leader>S", function()
  Snacks.scratch.select()
end, { desc = "Select Notes" })

--
-- Buscar entre tus notas guardadas
--
vim.keymap.set("n", "<leader>nl", function()
  Snacks.scratch.select()
end, { desc = "List Notes (Scratch)" })

--
-- Nota rápida con nombre personalizado
--
vim.keymap.set("n", "<leader>nn", function()
  vim.ui.input({ prompt = "Name of the note: " }, function(input)
    if input ~= nil and input ~= "" then
      Snacks.scratch({ name = input })
    end
  end)
end, { desc = "New Note with Name" })

-- Leader + ng (Nota General)
vim.keymap.set("n", "<leader>ng", function()
  Snacks.scratch({
    name = "general",
    title = " 📒 Nota General ",
  })
end, { desc = "Nota General" })

-- Leader + np (Nota de Proyecto)
vim.keymap.set("n", "<leader>np", function()
  -- Detecta el nombre de la carpeta actual
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")

  Snacks.scratch({
    name = "project_" .. project_name,
    title = " 🚀 Proyecto: " .. project_name,
  })
end, { desc = "Nota de Proyecto" })

--
-- Invertir efecto de 'i' y 'a'
--
-- vim.keymap.set("n", "i", "a", { desc = "Append after cursor" })
-- vim.keymap.set("n", "a", "i", { desc = "Insert before cursor" })
-- vim.keymap.set("n", "I", "A", { desc = "Append at end of line" })
-- vim.keymap.set("n", "A", "I", { desc = "Insert at start of line" })
