require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("v", '"', function()
  local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
  vim.api.nvim_feedkeys('c"' .. vim.fn.getreg('"') .. '"' .. esc, "n", false)
end, { desc = "Wrap in double quotes" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
