-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- <count>C-\ to ToggleTerm on that number
-- Consider mapping in insert mode
-- TODO: How to make these into a group?
map({ "n", "t" }, "<leader>wtt", '<cmd>exe v:count1 . "ToggleTerm"<cr>', { desc = "ToggleTerm" })
map({ "n", "t" }, "<leader>wta", "<cmd>ToggleTermToggleAll<cr>", { desc = "ToggleTermToggleAll" })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  -- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
  vim.keymap.set("t", "<leader>wh", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<leader>wj", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<leader>wk", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<leader>wl", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<leader>w", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
