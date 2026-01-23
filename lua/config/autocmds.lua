--
-- 1. FUNCIÓN CENTRAL DE SINCRONIZACIÓN
--
local function sync_notes(cmd, label)
  local dir = vim.fn.expand("~/Documents/notes")
  if vim.fn.isdirectory(dir) == 0 then
    vim.notify("Carpeta de notas no encontrada", "error")
    return
  end

  vim.fn.jobstart(cmd, {
    cwd = dir,
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        vim.notify("Notas: " .. label .. " ✅", "info", { title = "Git Sync" })
      else
        vim.notify("Error en Git " .. label .. " ❌", "error", { title = "Git Sync" })
      end
    end,
  })
end

--
-- 2. COMANDO MANUAL (:SyncNotes)
--
-- Escribir :SyncNotes en cualquier momento
vim.api.nvim_create_user_command("SyncNotes", function()
  sync_notes("git pull --ff-only && git add . && git commit -m 'manual-sync' && git push", "Sincronización Completa")
end, { desc = "Sincronizar notas manualmente" })
--
-- 3. AUTOMATISMOS
--
local group = vim.api.nvim_create_augroup("NotesSync", { clear = true })
--
-- PULL al entrar (espera 2 segundos)
--
vim.api.nvim_create_autocmd("VimEnter", {
  group = group,
  callback = function()
    vim.defer_fn(function()
      sync_notes("git pull --ff-only", "Actualizadas al entrar")
    end, 2000)
  end,
})
--
-- PUSH al salir
--
vim.api.nvim_create_autocmd("VimLeavePre", {
  group = group,
  callback = function()
    local push_cmd = "git add . && git commit -m 'auto-sync' && git push"
    sync_notes(push_cmd, "Guardadas al salir")
  end,
})
