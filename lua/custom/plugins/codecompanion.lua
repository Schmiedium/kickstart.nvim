return {
  'olimorris/codecompanion.nvim',
  opts = {
    opts = {
      log_level = 'DEBUG', -- or "TRACE"
    },
    adapters = {
      gemini = function()
        return require('codecompanion.adapters').extend('gemini', {
          env = {
            api_key = 'AIzaSyAw4rO9IMWKrGSVH2FKOMG5l0LB9nVG04c',
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = 'gemini',
      },
      inline = {
        adapter = 'gemini',
      },
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
