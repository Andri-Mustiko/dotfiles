return {
    'saghen/blink.cmp',
    event = 'InsertEnter',
    version = '1.*',
    dependencies = {
        {
            'L3MON4D3/LuaSnip',
            version = '2.*',
            build = (function()
                if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
                    return
                end
                return 'make install_jsregexp'
            end)(),
            dependencies = {},
            opts = {},
        },
        'folke/lazydev.nvim',
        'Exafunction/codeium.nvim'
    },
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
    opts = {
        keymap = {

        }
    }
}
