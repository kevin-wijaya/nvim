return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = 'VeryLazy',
		opts = {
			options = {
				theme = auto,
				globalstatus = vim.o.laststatus == 3,
				disabled_filetypes = {
					statusline = {
						"dashboard",
						"NvimTree",
					}
				}
			}
		}
	}
}
