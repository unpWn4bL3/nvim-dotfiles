vim.opt.termguicolors = true
require('bufferline').setup{
	options = {
		-- 启用nvim内置的lsp
		diagnostics = 'nvim-lsp',
		-- 为NvimTree设置偏移
		offsets = {{
			filetype = 'NvimTree',
			text = 'File Explorer',
			highlight = 'Directory',
			text_align = 'left'
		}}
	}
}


