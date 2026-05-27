return {
  'HakonHarnes/img-clip.nvim',
  event = 'VeryLazy',
  opts = {
    default = {
      -- add options here
      -- or leave it empty to use the default settings
      relative_to_current_file = true, -- save images relative to current file
      dir_path = function()
        return 'images/' .. vim.fn.expand '%:t:r' -- save to 'images/<current_file_name>/'
      end,
    },
  },
  keys = {
    -- suggested keymap
    { '<leader>p', '<cmd>PasteImage<cr>', desc = 'Paste image from system clipboard' },
  },
}
