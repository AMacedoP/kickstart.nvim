return {
  {
    'folke/todo-comments.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    dependencies = 'nvim-lua/plenary.nvim',
    cmd = { 'TodoTrouble', 'TodoTelescope' },
    keys = {
      {
        ']t',
        function()
          require('todo-comments').jump_next()
        end,
        desc = 'Next todo comment',
      },
      {
        '[t',
        function()
          require('todo-comments').jump_prev()
        end,
        desc = 'Previous todo comment',
      },
      {
        '<leader>st',
        '<cmd>TodoTelescope keywords=TODO,FIX,HACK<CR>',
        desc = 'Telescope: [S]earch [T]odo',
      },
    },
    opts = {},
  },
}
