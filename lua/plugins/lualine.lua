return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy="true" },
		opts = {
			options = {
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
