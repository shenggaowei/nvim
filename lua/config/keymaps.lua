-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("i", "jj", "<Esc>", { desc = "Enter Normal Mode" })
map("i", "jj", "<Esc>", { desc = "Enter Normal Mode" })

-- 上下滚动浏览
map("n", "<C-j>", "4j", { desc = "down 4 line" })
map("n", "<C-k>", "4k", { desc = "up 4 line" })
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", { desc = "up 9 line" })
map("n", "<C-d>", "9j", { desc = "down 9 line" })
