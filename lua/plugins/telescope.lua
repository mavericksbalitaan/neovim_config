return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    -- or                            , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>t", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = {
            "node_modules",
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
