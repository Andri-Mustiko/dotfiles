return {
 {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
   require('nvim-treesitter.config').setup({
    ensure_installed = {
     'lua',
     'python',
     'c',
     'cpp',
     'javascript',
     'csharp',
     'http'
    },
    sync_install = false,
    highlight =  { enable = true },
    indent = { enable = true },
   })
  end,
 },
}
