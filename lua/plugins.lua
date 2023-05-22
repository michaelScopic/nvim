-- Plugins for Neovim
--
-- Written by: michaelScopic
--

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Base16 colors
  use 'Soares/base16.nvim'

  -- Dev icons
  use 'nvim-tree/nvim-web-devicons'

  -- Lualine
  use {
  'nvim-lualine/lualine.nvim', 
  requires = { 
    'nvim-tree/nvim-web-devicons', opt = true 
    }
  }

  -- Tabs in nvim
  use {
  'akinsho/bufferline.nvim', tag = "*", 
  requires = 'nvim-tree/nvim-web-devicons'
  }

  -- nvim-tree
--  use {
--  'nvim-tree/nvim-tree.lua',
-- requires = {
--    'nvim-tree/nvim-web-devicons', -- optional
--    },
--  config = function()
--   require("nvim-tree").setup {}
--  end
--  }

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', branch = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

end)
