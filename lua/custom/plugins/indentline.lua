return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl', -- <- required with the new v3 version
  opts = {
    indent = { char = '│' },
    scope = {
      enabled = true,
      show_start = true,
      show_end = false,
    },
  },
}
