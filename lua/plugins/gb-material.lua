return {
	{
		"sainnhe/gruvbox-material",
		event = "VimEnter",
		lazy = false,
		priority = 1000,
		opts = function () 
			vim.g.gruvbox_material_transparent_background = 0
			vim.g.gruvbox_material_enable_italic = true
			vim.cmd.colorscheme('gruvbox-material')
		end
	}
}
