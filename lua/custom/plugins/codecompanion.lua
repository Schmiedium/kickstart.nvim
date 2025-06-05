return {
  'olimorris/codecompanion.nvim',
  opts = {
    opts = {
      log_level = 'DEBUG', -- or "TRACE"
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
