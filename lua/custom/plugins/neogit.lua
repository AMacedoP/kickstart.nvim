return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'nvim-telescope/telescope.nvim',
  },
  opts = {
    graph_style = 'unicode',
    disable_insert_on_commit = true,
  },
  config = true,
  keys = {
    {
      '<leader>gg',
      function()
        require('neogit').open()
      end,
      desc = 'Open Neo[g]it',
    },
  },
}
