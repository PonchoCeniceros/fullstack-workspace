-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Deshabilitar keymaps originales de navegación de ventanas y buffers
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- Navegación de ventanas con leader + w + flechas
vim.keymap.set("n", "<leader>w<Left>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<leader>w<Down>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<leader>w<Up>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<leader>w<Right>", "<C-w>l", { desc = "Go to Right Window" })

-- Navegación de buffers con leader + s + flechas
vim.keymap.set("n", "<leader>s<Left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>s<Right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Invertir efecto de 'i' y 'a'
vim.keymap.set("n", "i", "a", { desc = "Append after cursor" })
vim.keymap.set("n", "a", "i", { desc = "Insert before cursor" })
vim.keymap.set("n", "I", "A", { desc = "Append at end of line" })
vim.keymap.set("n", "A", "I", { desc = "Insert at start of line" })
