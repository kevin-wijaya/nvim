local header_part = {
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
}


local center_part = {
	{ action = "Telescope find_files",      desc = " Find File    ", icon = " ", key = "f" },
	{ action = "ene | startinsert",         desc = " New File     ", icon = " ", key = "n" },
	{ action = "Telescope oldfiles",        desc = " Recent Files ", icon = " ", key = "r" },
	{ action = "Telescope live_grep",       desc = " Find Text    ", icon = " ", key = "g" },
	{ action = "e ~/.config/nvim/init.lua", desc = " Config       ", icon = " ", key = "c" },
	{ action = "Lazy",                      desc = " Lazy         ", icon = "󰒲 ", key = "l" },
	{ action = "qa",                        desc = " Quit         ", icon = " ", key = "q" },
}
local center_format = { icon_hl = "function", key_hl = "Type", key_format = "[%s]" }

for _, entry in ipairs(center_part) do
	for k, v in pairs(center_format) do
		entry[k] = v
	end
	entry['desc'] = entry['desc'] .. "                 "
end

local footer_part = {}

return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup{
				theme = "doom",
				hide_statusline = true,
				config = {
					header = header_part,
					center = center_part,
					-- footer = footer_part,
				}
			}
		end,
		dependencies = {{"nvim-tree/nvim-web-devicons"}}
	}
}
