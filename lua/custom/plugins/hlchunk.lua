---@diagnostic disable: missing-fields
return {
  {
    'shellRaining/hlchunk.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('hlchunk').setup({
        blank = {
          enable = false,
        },
        chunk = {
          enable = true,
          delay = 0,
        },
      })
    end,
  },
}
