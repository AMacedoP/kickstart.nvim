return {
  'stevearc/conform.nvim',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require('conform')

    conform.setup({
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        css = { 'prettierd' },
        html = { 'prettierd' },
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        markdown = { 'mdformat' },
        yaml = { 'yamlfmt' },
      },
      formatters = {
        prettierd = {
          env = function()
            local prettierrc = vim.api.nvim_get_runtime_file('lua/custom/formatters-utils/prettierrc.yaml', false)
            return {
              PRETTIERD_DEFAULT_CONFIG = prettierrc[1],
            }
          end,
        },
        mdformat = {
          prepend_args = {
            '--wrap',
            '80',
            '--align-semantic-breaks-in-lists',
            '--ignore-missing-references',
          },
          type,
        },
      },
    })
  end,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end,
      desc = 'Format File',
    },
  },
}
