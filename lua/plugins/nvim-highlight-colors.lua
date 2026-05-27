-- Ensure termguicolors is enabled if not already
return {
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      --vim.opt.termguicolors = true

      require('nvim-highlight-colors').setup {}
    end,
  },
}
