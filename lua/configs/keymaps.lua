require('global')

-- normal mode --
map("n", ";", ":", map_otpions )
map("n", "w", "<C-w>", map_otpions )

map("n", "<leader>q", ":bd<CR>", map_otpions )
map("n", "<M-q>", ":q<CR>", map_otpions )
map("n", "<leader>wq", ":wq<CR>", map_otpions )
map("n", "<leader>ww", ":w<CR>", map_otpions )
map("n", "<leader>we", ":w ", map_otpions )

map("n", "<C-D>", "<S-v>yp", map_otpions )
map("n", "<C-X>", "dd", map_otpions )
-- map("n", "<C-V>", '"+p', map_otpions )

map("n", "<leader>e", ":NvimTreeToggle<CR>", map_otpions )
map("n", "<leader>t", ":terminal<CR>:setnonumber<CR>a", map_otpions )

map("n", "<leader>fr", ":%s/", map_otpions )

map("n", "<M-h>", "20zh", map_otpions )
map("n", "<M-l>", "20zl", map_otpions )

-- visual mode --
map("v", "<C-Y>", '"+y', map_otpions )

-- terminal mode --
map("t", "<ESC>", "<C-\\><C-n>", map_otpions ) 

-- global mode --
map('n', '<M-Up>', ':m .-2<CR>==', map_otpions )
map('i', '<M-Up>', '<Esc>:m .-2<CR>==gi', map_otpions )
map('v', '<M-Up>', ":m '<-2<CR>gv=gv", map_otpions )
map('n', '<M-Down>', ':m .+1<CR>==', map_otpions )
map('i', '<M-Down>', '<Esc>:m .+1<CR>==gi', map_otpions )
map('v', '<M-Down>', ":m '>+1<CR>gv=gv", map_otpions )



























