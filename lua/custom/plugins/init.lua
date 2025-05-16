-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      presets = {
        cmdline = {
          enabled = false,
        },
        command_palette = false,
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          mode = 'buffers', -- or "tabs" to show tabs instead
          separator_style = 'slant', -- or "thick", "thin", "slant"
          show_close_icon = false,
          show_buffer_close_icons = false,
          always_show_bufferline = true,
          diagnostics = 'nvim_lsp', -- Show LSP errors/warnings in the tabline
        },
      }
    end,
  },
  {
    {
      'kdheepak/lazygit.nvim',
      lazy = true,
      cmd = {
        'LazyGit',
        'LazyGitConfig',
        'LazyGitCurrentFile',
        'LazyGitFilter',
        'LazyGitFilterCurrentFile',
      },
      -- optional for floating window border decoration
      dependencies = {
        'nvim-lua/plenary.nvim',
      },
      -- setting the keybinding for LazyGit with 'keys' is recommended in
      -- order to load the plugin when the command is run for the first time
      keys = {
        { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
      },
    },
  },
}
