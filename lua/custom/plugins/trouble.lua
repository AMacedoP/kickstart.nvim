return {
  'folke/trouble.nvim',
  keys = {
    {
      '<leader>qq',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble)',
    },
  },
  opts = {
    focus = true,
  },
}
