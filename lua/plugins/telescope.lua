return {
  "nvim-telescope/telescope.nvim",
  -- replace all Telescope keymaps with only one mapping
  keys = function()
    return {
      { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<C-f>", "<cmd>Telescope grep_string<cr>", desc = "Grep String" },
    }
  end,
}
