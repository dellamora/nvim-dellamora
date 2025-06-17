-- Cheesecake colorscheme plugin for Kickstart.nvim
return {
  {
    -- Local colorscheme - references the cheesecake.lua file in your config
    dir = vim.fn.stdpath 'config',
    name = 'cheesecake',
    lazy = false,
    priority = 1000, -- Load before other plugins
    config = function()
      -- Load the colorscheme
      require('cheesecake').load()
    end,
  },
}
