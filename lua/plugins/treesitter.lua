return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
	lazy = vim.fn.argc(-1) == 0,
    opts = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { 
			  "c", 
			  "lua", 
			  "vim", 
			  "vimdoc", 
			  "query", 
			  "elixir", 
			  "heex", 
			  "javascript", 
			  "html" 
		  },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
