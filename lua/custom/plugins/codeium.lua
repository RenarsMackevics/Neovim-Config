return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.g.codeium_no_map_tab = 1

    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })

    vim.keymap.set('i', '<C-n>', function()
      return vim.fn
    end, { expr = true, silent = true })

    vim.keymap.set('i', '<C-p>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true })

    vim.keymap.set('i', '<C-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })

    -- Autocomplete on Enter
    vim.keymap.set('i', '<CR>', function()
      if vim.fn['codeium#GetStatusString']() ~= '' then
        return vim.fn['codeium#Accept']()
      else
        return '\r'
      end
    end, { expr = true, silent = true })
  end,
}
