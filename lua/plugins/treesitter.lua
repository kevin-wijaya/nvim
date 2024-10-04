local ensure_installed = {
    "bash", 
    "c", 
    "csv",
    "css", 
    "diff", 
    "dockerfile",
    "html", 
    "javascript",
    "jsdoc", 
    "json", 
    "jsonc", 
    "lua", 
    "luadoc", 
    "luap",
    "markdown", 
    "markdown_inline", 
    "php", 
    "printf", 
    "python", 
    "query", 
    "regex", 
    "rust", 
    "sql", 
    "toml", 
    "tsx", 
    "typescript", 
    "vim", 
    "vimdoc", 
    "xml", 
    "yaml", 
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
	lazy = vim.fn.argc(-1) == 0,
    opts = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = ensure_installed,
	      ignore_install = { "org", },		 
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
