return {
  "moll/vim-bbye",
  -- replace all Telescope keymaps with only one mapping
  keys = function()
    return {
      { "<C-w>", "<cmd>Bdelete!<cr>", desc = "Close Current Tab" },
    }
  end,
}
