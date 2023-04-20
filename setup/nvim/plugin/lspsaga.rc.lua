local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup {
  server_filetype_map = {},
    ui = {
    -- This option only works in Neovim 0.9
    title = true,
    -- Border type can be single, double, rounded, solid, shadow.
    border = "single",
    winblend = 0,
    expand = "",
    collapse = "",
    code_action = "💡",
    incoming = " ",
    outgoing = " ",
    hover = ' ',
    kind = {},
  },
}

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('i', '<C-k>', '<cmd>Lspsaga signature_help<cr>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', opts)
