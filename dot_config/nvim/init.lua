vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.o.fillchars = "eob: "

require("config.lazy")
require("config.colorscheme")
require("config.keymap")