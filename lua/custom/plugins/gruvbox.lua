return {
  'ellisonleao/gruvbox.nvim',
  config = function()
    require('gruvbox').setup {
      contrast = 'soft', -- can be "hard", "medium" o:r', -- or "soft", or "medium"
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        comments = true,
        operators = false,
      },
    }
    vim.cmd.colorscheme 'gruvbox'
  end,
}
