return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = "<leader>=",
      direction = "horizontal",
      size = 20,
      auto_scroll = true,
      autochdir = true,
      vim.keymap.set("n", "<leader>lt", ":TermSelect<CR>"),
      vim.keymap.set("n", "<leader>fp", ":2TermExec cmd='prettier % --write' <CR>"),
    })
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
  end,
}
