return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    lazy = true,
    enabled = false,
    ft = 'markdown',
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    opts = {
      checkbox = {
        enabled = true,
        position = 'inline',
        unchecked = {
          icon = '󰄱 ',
          highlight = 'RenderMarkdownUnchecked',
          scope_highlight = nil,
        },
        checked = {
          icon = '󰱒 ',
          highlight = 'RenderMarkdownChecked',
          scope_highlight = nil,
        },
        custom = {
          todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
          -- inprogress = { raw = '[/]', rendered = '', highlight = 'RenderMarkdownInProgress', scope_highlight = nil },
          inprogress = { raw = '[/]', rendered = '󰿦 ', highlight = 'DiagnosticWarn', scope_highlight = nil },
        },
      },
    },
  },
}
