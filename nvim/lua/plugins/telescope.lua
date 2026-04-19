return {
    {
        'nvim-telescope/telescope.nvim', version = '*',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            require('telescope').setup {
                pickers = {
                    find_files = {
                        theme = "ivy"
                    }
                }
            }

            vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
            vim.keymap.set("n", "<space>fd", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<space>fg", require('telescope.builtin').live_grep)
            vim.keymap.set("n", "<space>fb", require('telescope.builtin').buffers)
       end
    }
}
