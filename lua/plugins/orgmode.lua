return {
	{
		'nvim-orgmode/orgmode',
		ft = 'org',
		config = function()
			require('orgmode').setup({
				-- org_agenda_files = '~/orgfiles/**/*',
				-- orgorg_default_notes_file = '~/orgfiles/refile.org',
			})
		end,
	}
}
