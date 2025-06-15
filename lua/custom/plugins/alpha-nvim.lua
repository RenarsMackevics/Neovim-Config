return {
  'goolord/alpha-nvim',
  lazy = false,
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local handle = io.popen 'fortune | cowsay'
    local result = {}
    if handle then
      for line in handle:lines() do
        table.insert(result, line)
      end
      handle:close()
    else
      result = { 'Could not run fortune | cowsay' }
    end

    dashboard.section.header.val = {
      ' __    __                   __     __ __              ',
      '|  \\  |  \\                 |  \\   |  \\  \\             ',
      '| ▓▓\\ | ▓▓ ______   ______ | ▓▓   | ▓▓\\▓▓______ ____  ',
      '| ▓▓▓\\| ▓▓/      \\ /      \\| ▓▓   | ▓▓  \\      \\    \\ ',
      '| ▓▓▓▓\\ ▓▓  ▓▓▓▓▓▓\\  ▓▓▓▓▓▓\\\\▓▓\\ /  ▓▓ ▓▓ ▓▓▓▓▓▓\\▓▓▓▓\\',
      '| ▓▓\\▓▓ ▓▓ ▓▓    ▓▓ ▓▓  | ▓▓ \\▓▓\\  ▓▓| ▓▓ ▓▓ | ▓▓ | ▓▓',
      '| ▓▓ \\▓▓▓▓ ▓▓▓▓▓▓▓▓ ▓▓__/ ▓▓  \\▓▓ ▓▓ | ▓▓ ▓▓ | ▓▓ | ▓▓',
      '| ▓▓  \\▓▓▓\\▓▓     \\\\▓▓    ▓▓   \\▓▓▓  | ▓▓ ▓▓ | ▓▓ | ▓▓',
      ' \\▓▓   \\▓▓ \\▓▓▓▓▓▓▓ \\▓▓▓▓▓▓     \\▓    \\▓▓\\▓▓  \\▓▓  \\▓▓',
      '                                                      ',
      '                                                      ',
      '                                                      ',
    }

    dashboard.section.buttons.val = {
      dashboard.button('Se', '  File Explorer', ':NvimTreeToggle<CR>'),
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('r', '  Recent files', ':Telescope oldfiles <CR>'),
      dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
      dashboard.button('c', '  Open Config', ':NvimTreeToggle ~/.config/nvim<CR>'),
      dashboard.button('q', '  Quit NVIM', ':qa<CR>'),
    }
    dashboard.section.footer.val = result
    dashboard.section.footer.opts = {

      position = 'right',
    }

    alpha.setup(dashboard.opts)
  end,
}
