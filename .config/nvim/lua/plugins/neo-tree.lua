return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  config = function()
    require("neo-tree").setup({

      close_if_last_window = true,

      sources = { "filesystem" },

      window = {
        position = "left",
        width = 40,
      },

      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
        hijack_netrw_behavior = "open_default",
      },

      default_component_configs = {
        indent = {
          padding = 1,
        },
      },

    })

    -- SIMPLE toggle key
    vim.keymap.set("n", "<C-e>", "<cmd>Neotree filesystem left toggle<CR>", { silent = true })
  end,
}
