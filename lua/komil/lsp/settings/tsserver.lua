return {
	root_dir = function()
		return vim.loop.cwd()
	end, -- run lsp for javascript in any directory
}
