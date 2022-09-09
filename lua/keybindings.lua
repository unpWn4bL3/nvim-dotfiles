local nmap = function(lhs, rhs, ...)
	opt = { ... }
	if opt == nil then
		opt = { noremap = true, silent = true }
	end
	vim.api.nvim_set_keymap('n', lhs, rhs, opt)
end

-- nvim-treep配置快捷键
nmap('<Space>e', ':NvimTreeToggle<CR>')
-- bufferline配置tab切换
nmap('<C-h>', ':BufferLineCyclePrev<CR>')
nmap('<C-l>', ':BufferLineCycleNext<CR>')
nmap('ff', ':Telescope find_files<CR>')
nmap('fg', ':Telescope live_grep<CR>')
nmap('fb', ':Telescope buffers<CR>')
nmap('fh', ':Telescope help_tags<CR>')
