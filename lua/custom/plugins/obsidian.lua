return {
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
}
