return {
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    opts = {
      -- Optional, you don't have to run setup.
      -- table: default groups
      groups = {
        'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLine',
        'CursorLineNr',
        'StatusLine',
        'StatusLineNC',
        'EndOfBuffer',
      },
      -- table: additional groups that should be cleared
      extra_groups = {
        'NvimTreeNormal',
        'NvimTreeSitter',
        'NormalFloat',
      }, -- table: additional groups that should be cleared
      -- table: groups you don't want to clear
      exclude_groups = { -- table: groups you don't want to clear
        'NotifyBackground',
      },
      -- function: code to be executed after highlight groups are cleared
      -- Also the user event "TransparentClear" will be triggered
      on_clear = function() end,
    },
  },
}
