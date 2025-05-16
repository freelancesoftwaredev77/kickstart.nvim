return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'Toggle NeoTree', silent = true },
    { '<leader>e', ':Neotree toggle<CR>', desc = 'Toggle NeoTree', silent = true },
  },
  opts = {
    close_if_last_window = true,
    popup_border_style = 'rounded',
    enable_git_status = true,
    enable_diagnostics = true,
    filesystem = {
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = 'open_current',
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<leader>e'] = 'close_window',
        },
      },
    },
    -- Right-side configuration
    window = {
      position = 'right', -- Changed from 'left' to 'right'
      width = 30,
      mappings = {
        ['<space>'] = 'none', -- Disable default space mapping
      },
    },
  },
}
