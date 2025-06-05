return {
  {
    'stevearc/overseer.nvim',
    opts = {},

    keys = {
      {
        '<leader>r',
        mode = { 'n', 'v' },
        '<cmd>OverseerRun<cr>',
        desc = 'Start Overseer to run a command',
      },
    },
  },
}
