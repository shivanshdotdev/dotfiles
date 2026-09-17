vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.termguicolors = true
require("config.lazy")
require("config.keymaps")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local mouse_scrolling = false

vim.on_key(function(key)
  local scroll_up = vim.keycode("<ScrollWheelUp>")
  local scroll_down = vim.keycode("<ScrollWheelDown>")

  if key == scroll_up or key == scroll_down then
    mouse_scrolling = true
    vim.schedule(function()
      mouse_scrolling = false
    end)
  end
end)

vim.api.nvim_create_autocmd("CursorMoved", {
  callback = function()
    if vim.bo.buftype == "" and vim.fn.mode() == "n" and not mouse_scrolling then
      vim.cmd("normal! zz")
    end
  end,
})
-- OR setup with a config

---@type nvim_tree.config
local config = {
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}
require("nvim-tree").setup(config)
