return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		opts = function() 
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
			return { 
				view = {
     				width = 30,
					side = "left",
					number = false,
					relativenumber = false,
				},
				renderer = {
					group_empty = true,
					highlight_git = true,
					highlight_opened_files = "all",
					indent_markers = {
						enable = true,
						inline_arrows = true,
						icons = {
							corner = "└",
							edge = "│",
							item = "│",
							bottom = "─",
							none = " ",
						},
					},
				},
				filters = {
					dotfiles = false,
				},
				git = {
					enable = true,
					ignore = false,
				},
			}
		end,
	}
}

