return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    lazy = false,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
    opts = {
      transperent_background = true,
      flavour = 'mocha',
      background = { -- :h background
        light = 'latte',
        dark = 'mocha',
      },
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        fzf = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        notify = true,
        nvimtree = true,
        render_markdown = true,
        telescope = {
          enabled = true,
          -- style = "nvchad"
        },
        treesitter = true,
      },
      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  },
}
