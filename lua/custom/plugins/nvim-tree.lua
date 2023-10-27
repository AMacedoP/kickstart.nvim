return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local nvimtree = require('nvim-tree')

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])
    vim.cmd([[ highlight NvimTreeFolderIcon guifg=#5c93ed ]])

    -- configure nvim-tree
    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '', -- arrow when folder is closed
              arrow_open = '', -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { '.DS_Store', '^.git/' },
        git_ignored = false
      },
      update_focused_file = {
        enable = true,
      },
    })
  end,
  keys = {
    {
      '<leader>ee',
      '<cmd>NvimTreeToggle<cr>',
      desc = 'Toggle file Explorer',
    },
    {
      '<leader>ef',
      '<cmd>NvimTreeFindFileToggle<cr>',
      desc = 'Toggle file explorer on current file',
    },
    {
      '<leader>ec',
      '<cmd>NvimTreeCollapse<cr>',
      desc = 'Collapse file explorer',
    },
    {
      '<leader>er',
      '<cmd>NvimTreeRefresh<cr>',
      desc = 'Refresh file explorer',
    },
  },
}
