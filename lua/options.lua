--- Personal options

vim.o.colorcolumn = '80'
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true

-- Diff opts
vim.opt.diffopt = {
  'internal',
  'filler',
  'closeoff',
  'context:12',
  'algorithm:histogram',
  'linematch:200',
  'indent-heuristic',
  'iwhite', -- I toggle this one, it doesn't fit all cases.
}

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
