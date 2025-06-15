return {
  'kyazdani42/nvim-tree.lua',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 30,
        side = 'left',
      },
      git = {
        enable = true,
        ignore = false,
      },
      renderer = {
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
          },
        },
      },
    }
  end,
  lazy = false, -- optional: load immediately if you want
}
