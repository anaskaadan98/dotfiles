return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = {
      'lua',
      'python',
      'vimdoc',
      'vim',
      'regex',
      'sql',
      'dockerfile',
      'json',
      'gitignore',
      'yaml',
      'make',
      'cmake',
      'markdown',
      'markdown_inline',
      'bash',
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
    },
  },
}
