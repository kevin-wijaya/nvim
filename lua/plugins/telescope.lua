require("global")

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
	cmd = "Telescope",
	event = { "BufEnter" },
	dependencies = { 'nvim-lua/plenary.nvim', lazy = true, },
    opts = function()
        local telescope = require("telescope.builtin")
        map("n", "<leader>ff", telescope.find_files, map_options )
        map("n", "<leader>fg", telescope.live_grep, map_options )
        map("n", "<leader>fb", telescope.buffers, map_options )
        map("n", "<leader>fh", telescope.help_tags, map_options )
		map("n", "<leader>fo", telescope.oldfiles, map_options )
		
		local function show_keymaps()
			require('telescope.builtin').keymaps{}
		end

		map('n', '<leader><leader>', telescope.keymaps, map_options)
	end,
}
