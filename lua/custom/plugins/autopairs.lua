return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  dependencies = { 'hrsh7th/nvim-cmp' },
  opts = {
    check_ts = true,
  },
  config = function(_, opts)
    require('nvim-autopairs').setup(opts)
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:off('confirm_done', cmp_autopairs.on_confirm_done())
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
