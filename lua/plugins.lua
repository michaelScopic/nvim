-- Plugins for Neovim
--
-- Written by: michaelScopic
--

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Base16 colors
  use 'RRethy/nvim-base16'

  -- Dev icons
  use 'nvim-tree/nvim-web-devicons'

  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Tabs in nvim
  use {
  'akinsho/bufferline.nvim', tag = "*", 
  requires = 'nvim-tree/nvim-web-devicons'
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
  end,
  }

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', branch = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Discord RPC
  use 'andweeb/presence.nvim'

  -- Prettification
  use { 'junegunn/vim-easy-align', disable = true }
  
  
  -- Startup page
  use {
    'startup-nvim/startup.nvim',
    requires = {'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim'},
    config = function()
      require"startup".setup()
    end
  }

end)
