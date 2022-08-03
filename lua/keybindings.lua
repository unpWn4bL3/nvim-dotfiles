local nmap = function(lhs, rhs, ...)
	opt = { ... }
	if opt == nil then
		opt = { noremap = true, silent = true }
	end
	vim.api.nvim_set_keymap('n', lhs, rhs, opt)
end

-- nvim-treep配置快捷键
nmap('<A-e>', ':NvimTreeToggle<CR>')
-- bufferline配置tab切换
nmap('<C-h>', ':BufferLineCyclePrev<CR>')
nmap('<C-l>', ':BufferLineCycleNext<CR>')
