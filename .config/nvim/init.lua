-- VSCode-style bottom terminal toggle
local term_win = nil

vim.keymap.set("n", "<C-t>", function()
  if term_win and vim.api.nvim_win_is_valid(term_win) then
    vim.api.nvim_win_close(term_win, true)
    term_win = nil
  else
    vim.cmd("belowright split")
    vim.cmd("resize 15")
    vim.cmd("terminal")
    term_win = vim.api.nvim_get_current_win()
  end
end)

-- Exit terminal mode with ESC
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])


-- load options
require("options")

-- load keymappings
require("keymaps")

-- load lazy.nvim (package manager)
require("plugin_manager")

-- Set colorscheme
require("colorscheme")

-- Set LSP
require("lsp")
