-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
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
  {
    'rcarriga/nvim-notify',
    opts = {
      -- needed to prevent error from noice
      background_colour = '#000000',
    },
  },
  -- command line replacement
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          -- ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
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
  {
    'epwalsh/obsidian.nvim',
    enabled = true,
    version = '*',
    lazy = true,
    ft = 'markdown',
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',
    },
    keys = {
      {
        '<leader>os',
        '<cmd>ObsidianSearch<CR>',
        desc = 'Search for notes in vault',
      },
      {
        '<leader>on',
        '<cmd>ObsidianNew<CR>',
        desc = 'Create new note',
      },
      {
        '<leader>od',
        '<cmd>ObsidianDailies<CR>',
        desc = 'Open dailies picker',
      },
      {
        '<leader>ot',
        '<cmd>ObsidianToday<CR>',
        desc = 'Create daily note for today',
      },
    },
    opts = {
      ui = { enable = false },
      workspaces = {
        {
          name = 'rtfm',
          path = '/obsidian/rtfm',
        },
      },
      daily_notes = {
        folder = 'dailies',
      },
      -- Optional, customize how note IDs are generated given an optional title.
      ---@param title string|?
      ---@return string
      note_id_func = function(title)
        -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
        -- In this case a note with the title 'My new note' will be given an ID that looks
        -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
        local suffix = ''
        if title ~= nil then
          -- If title is given, transform it into valid file name.
          suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
        else
          -- If title is nil, just add 4 random uppercase letters to the suffix.
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90))
          end
        end
        return tostring(os.time()) .. '-' .. suffix
      end,
      -- Optional, customize how note file names are generated given the ID, target directory, and title.
      ---@param spec { id: string, dir: obsidian.Path, title: string|? }
      ---@return string|obsidian.Path The full path to the new note.
      note_path_func = function(spec)
        -- This is equivalent to the default behavior.
        local path = spec.dir / tostring(spec.title)
        return path:with_suffix '.md'
      end,
    },
  },
  -- used by markdown.nvim
  {
    'echasnovski/mini.icons',
    version = false,
    lazy = true,
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    lazy = true,
    enabled = true,
    ft = 'markdown',
    opts = {},
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  },
}
