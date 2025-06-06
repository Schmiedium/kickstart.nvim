return {
  'olimorris/codecompanion.nvim',
  opts = {
    opts = {
      log_level = 'DEBUG', -- or "TRACE"
    },
    adapters = {
      gemini = function()
        return require('codecompanion.adapters').extend('gemini', {
          env = { api_key = 'cmd: cat ~/.config/gemini-api-key' },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = { name = 'gemini', model = 'gemini-2.5-flash-preview-05-20' },
      },
      inline = {
        adapter = { name = 'gemini', model = 'gemini-2.5-flash-preview-05-20' },
        keymaps = {
          accept_change = {
            modes = { n = 'ga' },
            description = 'Accept the suggested change',
          },
          reject_change = {
            modes = { n = 'gR' },
            description = 'Reject the suggested change',
          },
        },
      },
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    { '<leader>ccc', '<cmd>CodeCompanionChat<cr>', desc = 'CodeCompanionChat' },
    { '<leader>cct', '<cmd>CodeCompanionChat Toggle<cr>', desc = 'CodeCompanionChat Toggle' },
  },
}
