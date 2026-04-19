return {
    {
        "seblyng/roslyn.nvim",
        ft = "cs",
        dependencies = {
            {},
        },
        config = function()
            require("roslyn").setup({
                args = {
                    "--logLevel=Information",
                    "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
                },
                config = {
                    -- Pass your standard LSP on_attach and capabilities here
                    on_attach = on_attach,
                    capabilities = capabilities,
                }
            })
        end
    }
}
