--- Personal keymaps

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Keymap to save
vim.keymap.set({ 'n', 'i' }, '<C-s>', vim.cmd.write, { desc = 'Write buffer' })

-- Restore cursor on nvim exit
vim.api.nvim_create_autocmd('VimLeave', {
  callback = function()
    vim.opt.guicursor = 'a:ver25'
  end,
})

-- The Primeagen keymaps
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- keymaps to show signature and signature help with rounded borders
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('personal-lsp-attach', { clear = true }),
  callback = function(event)
    vim.keymap.set('n', 'K', function()
      vim.lsp.buf.hover({ border = 'rounded' })
    end, { buffer = event.buf, desc = 'LSP: Hover' })

    vim.keymap.set({ 'i', 'n' }, '<C-k>', function()
      vim.lsp.buf.signature_help({ border = 'rounded' })
    end, { buffer = event.buf, desc = 'LSP: Signature Help' })
  end,
})
