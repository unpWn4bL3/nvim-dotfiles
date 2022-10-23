vim.cmd [[set mouse=a]]
vim.cmd [[set number]]
local TAB_WIDTH = 2
vim.bo.tabstop = TAB_WIDTH
vim.bo.shiftwidth = TAB_WIDTH

vim.opt.fillchars:append { eob = " " }
