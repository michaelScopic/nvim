-- Startup for Neovim
--
-- Written by: michaelScopic
--

-------------------------------------
-- THIS IS NOT IN A USEABLE STATE! --
-------------------------------------

-- Set colorscheme
vim.cmd('colorscheme base16-ashes')

-- Call plugins
require('plugins')

require('lualine').setup {
  --require('config.lualine-evil'),
  --require('config.lualine-bubbles'),
  --options = { theme = 'base16-ashes' }
}


-- Call Startpage
require("startup").setup({theme = "evil"}) -- put theme name here

-- TODO: Remove this line for a production release
print("Note: This is not in a useable state.")
