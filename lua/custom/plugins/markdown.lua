return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  config = function()
    local markdown = require('render-markdown')

    vim.keymap.set('n', '<leader>tm', function()
      markdown.toggle()
    end, { desc = '[T]oggle [M]arkdown rendering' })
  end,
}
