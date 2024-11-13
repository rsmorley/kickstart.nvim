return {
  {
    'stevearc/oil.nvim',
    lazy = true,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    keys = {
      {
        '-',
        '<cmd>Oil --float<CR>',
        desc = 'Open parent dir in floating window',
      },
    },
  },
}
