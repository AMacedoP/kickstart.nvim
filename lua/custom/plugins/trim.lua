return {
  'cappyzawa/trim.nvim',
  config = function()
    require('trim').setup({
      trim_last_line = true,
      trim_first_line = false,
    })
  end,
}
