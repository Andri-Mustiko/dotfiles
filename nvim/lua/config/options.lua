vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.g.mouse = 'a'

vim.g.showmode = false

vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = false

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.opt.timeoutlen = 300

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.list = false
vim.opt.listchars = { tab = '>> ', trail = '.', nbsp = '_'}

vim.opt.inccommand = 'split'

vim.opt.cursorline = false

vim.opt.scrolloff = 10

vim.opt.confirm = false

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
