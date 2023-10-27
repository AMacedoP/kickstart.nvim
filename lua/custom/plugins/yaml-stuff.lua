return {
  'someone-stole-my-name/yaml-companion.nvim',
  dependencies = {
    { 'neovim/nvim-lspconfig' },
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
    { 'b0o/schemastore.nvim' },
  },
  config = function()
    local cfg = require('yaml-companion').setup({
      builtin_matchers = {
        kubernetes = { enabled = true },
      },

      lspconfig = {
        settings = {
          yaml = {
            validate = true,
            schemaStore = {
              enable = false,
              url = '',
            },

            -- schemas from store, matched by filename
            -- loaded automatically
            schemas = require('schemastore').yaml.schemas({}),
            schemaDownload = { enabled = true },
            trace = { server = 'debug' },
          },
        },
      },
    })

    require('lspconfig')['yamlls'].setup(cfg)

    require('telescope').load_extension('yaml_schema')

    -- get schema for current buffer
    local function get_schema()
      local schema = require('yaml-companion').get_buf_schema(0)
      if schema.result[1].name == 'none' then
        return ''
      end
      return schema.result[1].name
    end
  end,
}
