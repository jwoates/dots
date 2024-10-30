-- source $HOME/.config/nvim/nvimrc/init.vimrc
-- source $HOME/.config/nvim/nvimrc/general.vimrc
-- source $HOME/.config/nvim/nvimrc/keys.vimrc
--
require("config.mappings")
require("config.plugins")
require("config.colorscheme")

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-tree.lua')
Plug('junegunn/fzf.vim')
Plug('junegunn/fzf', { ['do'] = function()
  vim.fn['fzf#install']()
end })
vim.call('plug#end')
-- vim.cmd('silent! colorscheme seoul256')

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- disable mouse
vim.opt.mouse = ""

-- copy to clipboard
vim.api.nvim_set_option("clipboard", "unnamed")

-- no line wrap
vim.wo.wrap = false

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
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
})
